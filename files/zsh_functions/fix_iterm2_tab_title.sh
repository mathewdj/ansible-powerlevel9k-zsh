function fix_iterm2_tab_title() {
  case $TERM in
  xterm*)
    precmd() {print -Pn "\e]0;%~\a"}
    ;;
  esac
}

alias ftt='fix_iterm2_tab_title'