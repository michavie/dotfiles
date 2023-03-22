eval "$(starship init zsh)"

# envs
export DOTFILES=$HOME/.dotfiles
export ANDROID_SDK=/Users/micha/Library/Android/sdk

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GPG_TTY=$(tty)

# path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="node_modules/.bin:vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/elrondsdk:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="${HOME}/multiversx-sdk:${PATH}"

# aliases
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="source $HOME/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

alias todots="cd $DOTFILES"
alias tossh="cd $HOME/.ssh"
alias tolib="cd $HOME/Library"
alias tocode="cd $HOME/Code"

alias a="php artisan"
alias pest="./vendor/bin/pest"
alias vapor="./vendor/bin/vapor"

