# ZSH config

export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# User configuration
# zsh vi mode
bindkey -v
export KEYTIMEOUT=1 # kill the lag
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

setopt nosharehistory 

source ~/.bash_profile
alias vi=/opt/homebrew/bin/vim
alias vim=/opt/homebrew/bin/vim
alias fzft=fzf-tmux

alias startgrip="grip --pass 5d3e32d460b00b8dec8b51534e1b49e47e42b9b6" 
alias youtube-mp3="youtube-dl -x --audio-format mp3 -o \"~/youtube/%(title)s.%(ext)s\"" 
alias sshuw="ssh m35luo@linux.student.cs.uwaterloo.ca"
alias sshuwdb="ssh m35luo@ubuntu1604-002.student.cs.uwaterloo.ca"
alias g++14="g++ -std=c++14 -Wall -g"

export DEVOPS_HOME=/Users/mluo/workspace/ansible-playbooks
export GH_OAUTH_TOKEN=615948363d27ab0a087833123321febb2d184e2d

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$HOME/go/bin:$PATH"

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

function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[green]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
zle-line-init &> /dev/null

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Z
. ~/dotfiles/z.sh
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
chruby ruby-3.1.3
