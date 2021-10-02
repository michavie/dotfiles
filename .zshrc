# ENVs
export DOTFILES=$HOME/.dotfiles
export ANDROID_SDK=/Users/micha/Library/Android/sdk

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=/Users/micha/Library/Android/sdk/platform-tools:$PATH
export PATH=/Users/micha/elrondsdk:$PATH

# Aliases
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="source $HOME/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

alias todots="cd $DOTFILES"
alias tossh="cd $HOME/.ssh"
alias tolib="cd $HOME/Library"
alias tocode="cd $HOME/Code"

alias a="php artisan"

alias c="composer"
alias cfresh="rem -rf vendor/ composer.lock && composer i"
alias pest="./vendor/bin/pest"

alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
