#main config
export PROMPT='%F{green}%n@%m:%F{yellow}%~$%F{white} '
export RPROMPT=''
HISTFILE=~/.zhistory

#aliases
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias gettmux="tmux attach || tmux new"
alias ls='ls -F --color=auto'

p() { cd ~/projects/$1; }
compctl -W ~/projects/ -/ p

#shortcuts
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1   ;;
      *.tar.gz)  tar xvzf $1   ;;
      *.tar.xz)  tar xvfJ $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xvf $1    ;;
      *.tbz2)    tar xvjf $1   ;;
      *.tgz)     tar xvzf $1   ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
