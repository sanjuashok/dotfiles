if [ -f ~/.bash_exports ]; then
    . ~/.bash_exports
fi

if [ -f ~/.bash_git_prompt ]; then
    . ~/.bash_git_prompt
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi

shopt -s globstar # allow for **/*.blah
shopt -s dirspell # do spelling correction on directory completion-
shopt -s extglob
shopt -s histappend
shopt -s histverify
set -b

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

function mkcd () {
    mkdir -p "$@" && cd "$@"
}
