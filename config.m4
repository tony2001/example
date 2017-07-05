dnl $Id$
dnl config.m4 for extension example

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(example, for example support,
dnl Make sure that the comment is aligned:
dnl [  --with-example             Include example support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(example, whether to enable example support,
dnl Make sure that the comment is aligned:
dnl [  --enable-example           Enable example support])

if test "$PHP_EXAMPLE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-example -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/example.h"  # you most likely want to change this
  dnl if test -r $PHP_EXAMPLE/$SEARCH_FOR; then # path given as parameter
  dnl   EXAMPLE_DIR=$PHP_EXAMPLE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for example files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       EXAMPLE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$EXAMPLE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the example distribution])
  dnl fi

  dnl # --with-example -> add include path
  dnl PHP_ADD_INCLUDE($EXAMPLE_DIR/include)

  dnl # --with-example -> check for lib and symbol presence
  dnl LIBNAME=example # you may want to change this
  dnl LIBSYMBOL=example # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $EXAMPLE_DIR/$PHP_LIBDIR, EXAMPLE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_EXAMPLELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong example lib version or lib not found])
  dnl ],[
  dnl   -L$EXAMPLE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(EXAMPLE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(example, example.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
