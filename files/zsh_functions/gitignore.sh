function append_if_not_present() {
  STR=$1
  if ! grep -q "$STR" .gitignore; then
    echo "\n$STR" >> .gitignore
  fi
}

function gitignore_idea() {
  append_if_not_present ".idea/"
  append_if_not_present ".iml"
}

function gitignore_ansible() {
  append_if_not_present "*.retry"
}

function gitignore_python() {
  append_if_not_present "venv3/"
}

alias gii='gitignore_idea'
alias gia='gitignore_ansible'
alias gip='gitignore_python'