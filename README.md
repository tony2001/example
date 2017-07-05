Demo PHP extension
------------------

This PHP extension was generated using ext_skel script:

````shell
# git clone https://github.com/php/php-src
# cd php-src/ext
# ./ext_skel --extname=example
Creating directory example
Creating basic files: config.m4 config.w32 .gitignore example.c php_example.h CREDITS EXPERIMENTAL tests/001.phpt example.php [done].

To use your new extension, you will have to execute the following steps:

1.  $ cd ..
2.  $ vi ext/example/config.m4
3.  $ ./buildconf
4.  $ ./configure --[with|enable]-example
5.  $ make
6.  $ ./sapi/cli/php -f ext/example/example.php
7.  $ vi ext/example/example.c
8.  $ make

Repeat steps 3-6 until you are satisfied with ext/example/config.m4 and
step 6 confirms that your module is compiled into PHP. Then, start writing
code and repeat the last two steps as often as necessary.
````

Use your PHP packages (you'll probably need to install php-devel package) or build downloaded PHP sources yourself in order to compile this extension:
````shell
# cd example
# phpize
# ./configure --with-php-config=/path/to/your/php-config
# make install
# php example.php <-- just to check that it's working ok
````
This will compile and install example.so as a dynamic extension.


If you'd like to build PHP from sources, use the following commands:
````shell
# cd php-src
# ./buildconf
# ./configure --disable-all --disable-cgi --enable-debug
# make install
````
After that use installed `phpize` to compile dynamic extension.

If you'd like to build the extension statically, you need to change the configure line this way:
````shell
# ./configure --disable-all --disable-cgi --enable-debug --enable-example
````
The extension will be statically compiled into the PHP binary.
