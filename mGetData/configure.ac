#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([netdebug], [1.0], [BUG-REPORT-ADDRESS])
AM_INIT_AUTOMAKE(netdebug, 1.0)
#AC_OUTPUT(Makefile src/Makefile)
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h netdb.h netinet/in.h stdlib.h string.h sys/socket.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_SIZE_T

# Checks for library functions.
AC_CHECK_FUNCS([getcwd memset socket sysinfo])

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
