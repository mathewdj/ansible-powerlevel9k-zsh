export PATH="$PATH:$HOME/bash_functions"
source ${HOME}/.bash_functions
source ${HOME}/.bash_aliases
for bash_function in ~/bash_functions/**/*.sh; do source $bash_function; echo $bash_function; done

# Make the 'dir' background colour easier to see
POWERLEVEL9K_DIR_HOME_BACKGROUND='123'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='123'
POWERLEVEL9K_DIR_ETC_BACKGROUND='123'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='123'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir vcs newline status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history time)
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

plugins=(ansible git docker)