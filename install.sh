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

# set up development environment
./dev.sh

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
