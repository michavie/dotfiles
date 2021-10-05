#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
cd ~/.dotfiles
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type
mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# Install PHP extensions with PECL
pecl install imagick memcached redis swoole

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet
/usr/local/bin/composer global require beyondcode/expose
/usr/local/bin/composer global require laravel/vapor-cli

# Create a Sites directory
mkdir $HOME/Code

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet park $HOME/Code

# Clone Github repositories
./clone.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Removes Downloads folder and symlinks the iClouds Download folder
rm -r $HOME/Downloads
ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads $HOME/Downloads

# Set macOS preferences - we will run this last because this will reload the shell
source .macos
