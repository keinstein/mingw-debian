# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2014 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([GL_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable
  AC_REQUIRE([gl_PROG_AR_RANLIB])
  # Code from module announce-gen:
  # Code from module do-release-commit-and-tag:
  # Code from module gendocs:
  # Code from module gnu-web-doc-update:
  # Code from module gnumakefile:
  # Code from module gnupload:
  # Code from module maintainer-makefile:
  # Code from module readme-release:
  # Code from module update-copyright:
  # Code from module useless-if-before-free:
  # Code from module vc-list-files:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([GL_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_m4_base='m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([GL_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([GL_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([GL_LIBSOURCES]))
  m4_pushdef([GL_LIBSOURCES_LIST], [])
  m4_pushdef([GL_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='lib'
  # Autoconf 2.61a.99 and earlier don't support linking a file only
  # in VPATH builds.  But since GNUmakefile is for maintainer use
  # only, it does not matter if we skip the link with older autoconf.
  # Automake 1.10.1 and earlier try to remove GNUmakefile in non-VPATH
  # builds, so use a shell variable to bypass this.
  GNUmakefile=GNUmakefile
  m4_if(m4_version_compare([2.61a.100],
          m4_defn([m4_PACKAGE_VERSION])), [1], [],
        [AC_CONFIG_LINKS([$GNUmakefile:$GNUmakefile], [],
          [GNUmakefile=$GNUmakefile])])
  AC_CONFIG_COMMANDS_PRE([m4_ifdef([AH_HEADER],
    [AC_SUBST([CONFIG_INCLUDE], m4_defn([AH_HEADER]))])])
  # End of code from modules
  m4_ifval(GL_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([GL_LIBSOURCES_DIR])[ ||
      for gl_file in ]GL_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([GL_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([GL_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_LIBSOURCES_DIR])
  m4_popdef([GL_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    GL_libobjs=
    GL_ltlibobjs=
    if test -n "$GL_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $GL_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        GL_libobjs="$GL_libobjs $i.$ac_objext"
        GL_ltlibobjs="$GL_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([GL_LIBOBJS], [$GL_libobjs])
    AC_SUBST([GL_LTLIBOBJS], [$GL_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([GLtests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([GLtests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([GLtests_LIBSOURCES]))
  m4_pushdef([GLtests_LIBSOURCES_LIST], [])
  m4_pushdef([GLtests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='tests'
changequote(,)dnl
  GLtests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([GLtests_WITNESS])
  gl_module_indicator_condition=$GLtests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(GLtests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([GLtests_LIBSOURCES_DIR])[ ||
      for gl_file in ]GLtests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([GLtests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([GLtests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GLtests_LIBSOURCES_DIR])
  m4_popdef([GLtests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    GLtests_libobjs=
    GLtests_ltlibobjs=
    if test -n "$GLtests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $GLtests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        GLtests_libobjs="$GLtests_libobjs $i.$ac_objext"
        GLtests_ltlibobjs="$GLtests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([GLtests_LIBOBJS], [$GLtests_libobjs])
    AC_SUBST([GLtests_LTLIBOBJS], [$GLtests_ltlibobjs])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into GL_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([GL_LIBOBJ], [
  AS_LITERAL_IF([$1], [GL_LIBSOURCES([$1.c])])dnl
  GL_LIBOBJS="$GL_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into GL_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([GL_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [GL_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([GL_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([GL_LIBSOURCES_DIR], [lib])
      m4_append([GL_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into GLtests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([GLtests_LIBOBJ], [
  AS_LITERAL_IF([$1], [GLtests_LIBSOURCES([$1.c])])dnl
  GLtests_LIBOBJS="$GLtests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into GLtests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([GLtests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [GLtests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([GLtests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([GLtests_LIBSOURCES_DIR], [tests])
      m4_append([GLtests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([GL_FILE_LIST], [
  build-aux/announce-gen
  build-aux/do-release-commit-and-tag
  build-aux/gendocs.sh
  build-aux/gnu-web-doc-update
  build-aux/gnupload
  build-aux/update-copyright
  build-aux/useless-if-before-free
  build-aux/vc-list-files
  doc/gendocs_template
  m4/00gnulib.m4
  m4/gnulib-common.m4
  top/GNUmakefile
  top/README-release
  top/maint.mk
])
