export PATH="$PATH:$HOME/bash_functions"
for bash_function in ~/bash_functions/**/*.sh; do source $bash_function; echo $bash_function; done

export PATH="$PATH:$HOME/zsh_functions"
for zsh_function in ~/zsh_functions/**/*.sh; do source $zsh_function; echo $zsh_function; done

source ${HOME}/.bash_functions
source ${HOME}/.bash_aliases

plugins=(
  ansible 
  git 
  docker 
  virtualenv
)

# Make the 'dir' background colour easier to see
POWERLEVEL9K_DIR_HOME_BACKGROUND='123'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='123'
POWERLEVEL9K_DIR_ETC_BACKGROUND='123'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='123'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir 
  vcs 
  virtualenv
  newline 
  status
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MODE='nerdfont-complete'

source ~/powerlevel9k/powerlevel9k.zsh-theme

function settitle {
    echo "\033]0;${1}\007\c"
}

alias settitlePwd='settitle $(basename `pwd`)'

settitle $(basename `pwd`)

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
