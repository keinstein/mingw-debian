/*
 * Copyright (c) 2004-2005 The Trustees of Indiana University and Indiana
 *                         University Research and Technology
 *                         Corporation.  All rights reserved.
 * Copyright (c) 2004-2011 The University of Tennessee and The University
 *                         of Tennessee Research Foundation.  All rights
 *                         reserved.
 * Copyright (c) 2004-2005 High Performance Computing Center Stuttgart,
 *                         University of Stuttgart.  All rights reserved.
 * Copyright (c) 2004-2005 The Regents of the University of California.
 *                         All rights reserved.
 * Copyright (c) 2008-2014 University of Houston. All rights reserved.
 * Copyright (c) 2015      Research Organization for Information Science
 *                         and Technology (RIST). All rights reserved.
 * $COPYRIGHT$
 *
 * Additional copyrights may follow
 *
 * $HEADER$
 */


#include "ompi_config.h"
#include "fbtl_posix.h"

#include "mpi.h"
#include <unistd.h>
#include <sys/uio.h>
#include <limits.h>
#include "ompi/constants.h"
#include "ompi/mca/fbtl/fbtl.h"

#ifndef IOV_MAX
#define IOV_MAX 1024
#endif

ssize_t  mca_fbtl_posix_pwritev(mca_io_ompio_file_t *fh )
{
    /*int *fp = NULL;*/
    int i, block = 1;
    struct iovec *iov = NULL;
    int iov_count = 0;
    OMPI_MPI_OFFSET_TYPE iov_offset = 0;
    ssize_t ret_code=0, bytes_written=0;

    if (NULL == fh->f_io_array) {
        return OMPI_ERROR;
    }

    iov = (struct iovec *) malloc
        (OMPIO_IOVEC_INITIAL_SIZE * sizeof (struct iovec));
    if (NULL == iov) {
        opal_output(1, "OUT OF MEMORY\n");
        return OMPI_ERR_OUT_OF_RESOURCE;
    }

    for (i=0 ; i<fh->f_num_of_io_entries ; i++) {
	if (0 == iov_count) {
	    iov[iov_count].iov_base = fh->f_io_array[i].memory_address;
	    iov[iov_count].iov_len = fh->f_io_array[i].length;
	    iov_offset = (OMPI_MPI_OFFSET_TYPE)(intptr_t)fh->f_io_array[i].offset;
	    iov_count ++;
	}

	if (OMPIO_IOVEC_INITIAL_SIZE*block <= iov_count) {
	    block ++;
	    iov = (struct iovec *)realloc
		(iov, OMPIO_IOVEC_INITIAL_SIZE * block *
		 sizeof(struct iovec));
	    if (NULL == iov) {
		opal_output(1, "OUT OF MEMORY\n");
		return OMPI_ERR_OUT_OF_RESOURCE;
	    }
	}

	if (fh->f_num_of_io_entries != i+1) {
	    if ( (((OMPI_MPI_OFFSET_TYPE)(intptr_t)fh->f_io_array[i].offset +
		   (OPAL_PTRDIFF_TYPE)fh->f_io_array[i].length) ==
		  (OMPI_MPI_OFFSET_TYPE)(intptr_t)fh->f_io_array[i+1].offset) &&
		 (iov_count < IOV_MAX )) {
		iov[iov_count].iov_base =
		    fh->f_io_array[i+1].memory_address;
		iov[iov_count].iov_len = fh->f_io_array[i+1].length;
		iov_count ++;
		continue;
	    }
	}
	/*
	  printf ("RANK: %d Entries: %d count: %d\n",
	  fh->f_rank,
	  fh->f_num_of_io_entries,
	  iov_count);
	  for (j=0 ; j<iov_count ; j++) {
	  printf ("%p %lld\n",
	  iov[j].iov_base,
	  iov[j].iov_len);
	  }

	*/
	if (-1 == lseek (fh->fd, iov_offset, SEEK_SET)) {
	    opal_output(1, "lseek:%s", strerror(errno));
            free(iov);
	    return OMPI_ERROR;
	}
	ret_code = writev (fh->fd, iov, iov_count);
	if ( 0 < ret_code ) {
	    bytes_written += ret_code;
	}
	else if (-1 == ret_code ) {
	    opal_output(1, "writev:%s", strerror(errno));
            free (iov);
            return OMPI_ERROR;
	}
	iov_count = 0;
    }

    free (iov);

    return bytes_written;
}
