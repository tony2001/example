PHP_ARG_ENABLE(example, whether to enable example support,
[  --enable-example           Enable example support])

if test "$PHP_EXAMPLE" != "no"; then
  PHP_NEW_EXTENSION(example, example.c, $ext_shared)
fi
