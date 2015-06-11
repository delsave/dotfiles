
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

function tabname {
  printf "\e]1;$1\a"
}
function winname {
  printf "\e]2;$1\a"
}

eval "$(rbenv init -)"

