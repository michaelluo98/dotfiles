# ZSH config
export ZSH="/Users/mluo/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# User configuration
setopt nosharehistory 

source ~/.bash_profile

alias vi=/usr/local/bin/vim
alias vim=/usr/local/bin/vim
alias fzft=fzf-tmux

alias startgrip="grip --pass 5d3e32d460b00b8dec8b51534e1b49e47e42b9b6"

export DEVOPS_HOME=/Users/mluo/workspace/ansible-playbooks
export GH_OAUTH_TOKEN=615948363d27ab0a087833123321febb2d184e2d

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


# Functions
# ch - browse chrome history
ch() {
  local cols sep
  cols=$(( COLUMNS / 3 ))
  sep='{::}'

	# Make sure that the path is correct
  cp -f ~/Library/Application\ Support/Google/Chrome/Default/History /tmp/h

  sqlite3 -separator $sep /tmp/h \
    "select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
  awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
  fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}
