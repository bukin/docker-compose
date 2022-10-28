alias enable-xdebug="mv /usr/local/etc/php/conf.d/xdebug.ini.dis /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && kill -USR2 $(pgrep -P1 php-fpm)"
alias disable-xdebug="mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini.dis && kill -USR2 $(pgrep -P1 php-fpm)"
