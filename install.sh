#!/bin/sh

echo "Setting up your Mac..."

# check for homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# update homebrew recipes
brew update

# install all our dependencies with bundle (see brewfile)
cd ~/.dotfiles
brew tap homebrew/bundle
brew bundle

# set default mysql root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# install php extensions with pecl
pecl install imagick memcached redis swoole

# install global composer packages
/usr/local/bin/composer global require laravel/valet
/usr/local/bin/composer global require beyondcode/expose
/usr/local/bin/composer global require laravel/vapor-cli
/usr/local/bin/composer global require laravel/forge-cli

# create a sites directory
mkdir $HOME/Code

# install laravel valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet park $HOME/Code

# clone github repositories
./clone.sh

# removes .zshrc from $home (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# symlink the mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# removes downloads folder and symlinks the iclouds download folder
sudo rm -r $HOME/Downloads
ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads $HOME/Downloads

# set macos preferences - we will run this last because this will reload the shell
source .macos
