#!/bin/sh

echo "Setting up development environment..."

# create a sites directory
mkdir $HOME/Code

# set default mysql root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# install php extensions with pecl
pecl install imagick memcached redis swoole

# install global composer packages
/usr/local/bin/composer global require laravel/valet
/usr/local/bin/composer global require beyondcode/expose
/usr/local/bin/composer global require laravel/vapor-cli
/usr/local/bin/composer global require laravel/forge-cli

# install laravel valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet park $HOME/Code

# install global npm packages
npm install -g ts-node
npm install -g npm-check-updates

# cloning repos
git clone git@github.com:michavie/michavie.com.git $CODE/michavie.com

git clone git@github.com:Superciety/elrond-sdk-laravel.git $CODE/superciety--elrond-sdk-laravel
git clone git@github.com:Superciety/front-pwa.git $CODE/superciety--pwa
git clone git@github.com:Superciety/api.git $CODE/superciety--api
git clone git@github.com:Superciety/identity-sc.git $CODE/superciety--identity-sc
git clone git@github.com:Superciety/fellowships-sc.git $CODE/superciety--fellowships-sc
