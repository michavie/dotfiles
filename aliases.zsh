# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias todots="cd $DOTFILES"
alias tossh="cd $HOME/.ssh"
alias tolib="cd $HOME/Library"
alias tocode="cd $HOME/Code"

# Laravel
alias a="php artisan"
alias afresh="php artisan migrate:fresh --seed"

# PHP
alias c="composer"
alias cfresh="rem -rf vendor/ composer.lock && composer i"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
