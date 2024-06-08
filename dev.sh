#!/bin/sh

echo "Setting up development environment..."

# create a sites directory
mkdir $HOME/Code

export CODE=$HOME/Code

# set default mysql root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# install global composer packages
composer global require laravel/vapor-cli
composer global require laravel/forge-cli

# install global npm packages
npm install -g ts-node
npm install -g npm-check-updates

# cloning repos
git clone git@github.com:michavie/sc-playground.git $CODE/sc-playground

git clone git@github.com:PeerMeHQ/api $CODE/peerme--api
git clone git@github.com:PeerMeHQ/core-ts $CODE/peerme--core-ts
git clone git@github.com:PeerMeHQ/pwa $CODE/peerme--pwa
git clone git@github.com:PeerMeHQ/dao-sc $CODE/peerme--dao-sc
git clone git@github.com:PeerMeHQ/dao-plug-template-sc $CODE/peerme--dao-plug-template-sc
git clone git@github.com:PeerMeHQ/identity-sc $CODE/peerme--identity-sc
git clone git@github.com:PeerMeHQ/snippets $CODE/peerme--snippets
git clone git@github.com:PeerMeHQ/mx-sdk-laravel $CODE/peerme--mx-sdk-laravel
git clone git@github.com:PeerMeHQ/extensions $CODE/peerme--extensions
git clone git@github.com:PeerMeHQ/know $CODE/peerme--know
git clone git@github.com:PeerMeHQ/mx-strategy-contribution-token-sc.git $CODE/peerme--strategy-contribution-token-sc
git clone git@github.com:PeerMeHQ/mx-strategy-contribution-tokenless-sc.git $CODE/peerme--strategy-contribution-tokenless-sc
git clone git@github.com:PeerMeHQ/earn-sc.git $CODE/peerme--earn-sc
git clone git@github.com:PeerMeHQ/bounties-sc.git $CODE/peerme--bounties-sc
git clone git@github.com:PeerMeHQ/assets.git $CODE/peerme--assets

git clone git@github.com:SpawnableHQ/api.git $CODE/spawnable--api
git clone git@github.com:SpawnableHQ/pwa.git $CODE/spawnable--pwa
git clone git@github.com:SpawnableHQ/bridge-mx.git $CODE/spawnable--bridge-mx
git clone git@github.com:SpawnableHQ/mx-spawner-sc.git $CODE/spawnable--mx-spawner-sc

git clone git@github.com:VirtualLeap/organization-sc.git $CODE/vleap--organization-sc
git clone git@github.com:VirtualLeap/legal.git $CODE/vleap--legal
git clone git@github.com:VirtualLeap/api.git $CODE/vleap--api
git clone git@github.com:VirtualLeap/pwa.git $CODE/vleap--pwa
git clone git@github.com:VirtualLeap/hub.git $CODE/vleap--hub
