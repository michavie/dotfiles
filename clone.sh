#!/bin/sh

echo "Cloning repositories..."

CODE=$HOME/Code

# Personal
git clone git@github.com:michavie/michavie.com.git $CODE/michavie.com
git clone git@github.com:michavie/dotfiles.com.git $CODE/dotfiles
