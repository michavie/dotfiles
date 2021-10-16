# envs
export DOTFILES=$HOME/.dotfiles
export ANDROID_SDK=/Users/micha/Library/Android/sdk

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="node_modules/.bin:vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/elrondsdk:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:${PATH}"

# aliases
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
