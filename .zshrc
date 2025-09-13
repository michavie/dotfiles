export GPG_TTY="$(tty)"
export EDITOR="code -w"

# envs
export DOTFILES="$HOME/.dotfiles"
export ANDROID_SDK="/Users/micha/Library/Android/sdk"

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export GPG_TTY="$(tty)"

# path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="node_modules/.bin:vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/Library/Python/3.11/bin:${PATH}"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="${HOME}/multiversx-sdk:${PATH}"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# aliases
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias copyssh="pbcopy < \"$HOME/.ssh/id_ed25519.pub\""
alias reload="source \"$HOME/.zshrc\""

alias todots="cd \"$DOTFILES\""
alias tossh="cd \"$HOME/.ssh\""
alias tolib="cd \"$HOME/Library\""
alias tocode="cd \"$HOME/Code\""

alias a="php artisan"
alias pest="./vendor/bin/pest -p"
alias vapor="./vendor/bin/vapor"
alias py="python3.11"
alias commit='git commit -m'
alias wip='git add . && commit "wip" && git push'
alias publish='changeset version && git add . && commit "update version" && npm run build && changeset publish && git push'
alias server="ssh vleap@leapserver.local"
alias ca="cursor-agent"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/michavie/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/michavie/Library/Application Support/Herd/bin/":$PATH

# Created by `pipx` on 2024-06-16 13:49:29
export PATH="$PATH:/Users/michavie/.local/bin"
eval "$(rbenv init -)"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/michavie/Library/Application Support/Herd/config/php/84/"
export PATH="$PATH:/Users/michavie/.space"

export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/michavie/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"
