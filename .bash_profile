
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH="$PATH:$HOME/bin"

alias ll='ls -laG'
alias l='ll'
alias ls='ls -G'
alias ustat='history|cut -c8-|sort|uniq -c|sort -rn|head'
alias g='git'
alias py='python'

__git_ps1 () 
{ 
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " \e[0;32m(%s)\e[m" "${b##refs/heads/}";
    fi
}

PS1="\h:\W \u\$(__git_ps1)$ "

function tabname {
  printf "\e]1;$1\a"
}

function winname {
  printf "\e]2;$1\a"
}

eval "$(rbenv init -)"

