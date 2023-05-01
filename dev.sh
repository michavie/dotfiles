#!/bin/sh

echo "Setting up development environment..."

# create a sites directory
mkdir $HOME/Code

export CODE=$HOME/Code

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

git clone git@github.com:PeerMeHQ/dao-sc $CODE/peerme--dao-sc
git clone git@github.com:PeerMeHQ/dao-plug-template-sc $CODE/peerme--dao-plug-template-sc
git clone git@github.com:PeerMeHQ/identity-sc $CODE/peerme--identity-sc
git clone git@github.com:PeerMeHQ/snippets $CODE/peerme--snippets
git clone git@github.com:PeerMeHQ/mx-sdk-php $CODE/peerme--mx-sdk-php
git clone git@github.com:PeerMeHQ/mx-sdk-laravel $CODE/peerme--mx-sdk-laravel
git clone git@github.com:PeerMeHQ/mx-sdk-php-network-providers $CODE/peerme--mx-sdk-php-network-providers
git clone git@github.com:PeerMeHQ/extensions $CODE/peerme--extensions
git clone git@github.com:PeerMeHQ/know $CODE/peerme--know
