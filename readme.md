<p><strong>Prepare virtual machine</strong></p>

- cp .env.example .env
- docker-compose up -d
- docker-compose exec php composer install
- docker-compose exec php php artisan key:generate
- docker-compose exec php php artisan storage:link
- docker-compose run --rm node yarn install

<p><strong>Prepare DB</strong></p>

- docker-compose exec php php artisan migrate

<p><strong>Console Aliases</strong></p>

- alias dcphp="docker-compose exec php php"
- alias dcphpa="docker-compose exec php php artisan"
- alias dcphpc="docker-compose exec php composer"
- alias dcphp_exd="docker-compose exec php sh -l -c enable-xdebug"
- alias dcphp_dxd="docker-compose exec php sh -l -c disable-xdebug"
- alias dcnode="docker-compose run --rm node"
- alias dcblackfire_curl="docker-compose exec blackfire blackfire curl" (Example: > dcblackfire_curl nginx/test_page)
