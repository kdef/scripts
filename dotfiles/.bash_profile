if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

if [ -s "$HOME/.rvm/scripts/rvm" ]; then
    # https://rvm.io/rvm/install
    source $HOME/.rvm/scripts/rvm
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "/usr/local/go/bin" ]; then
    # https://go.dev/doc/install
    PATH="$PATH:/usr/local/go/bin"
fi

alias be='bundle exec'
alias k='kubectl'

set -o vi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -s "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# autocorrect typos in path names when using `cd`
shopt -s cdspell

# put results of history substitution in the editing buffer
shopt -s histverify
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
