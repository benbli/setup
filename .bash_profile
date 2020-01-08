if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Interactive sessions only
[ -z "$PS1" ] && return

export PATH=~/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# Call local git repo to github in browser
function github() {
  #call from a local repo to open the repository on github in browser
  giturl=$(git config --get remote.origin.url)
  if [ "$giturl" == "" ]
    then
     echo "Not a git repository or no remote.origin.url set"
     exit 1;
  fi
  giturl=${giturl/git\@github\.com\:/https://github.com/}
  giturl=${giturl/\.git//}
  echo $giturl
  open $giturl
}


# Git branch in prompt.
parse_git_branch() {     
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Auto ls after cd
function cd {
  builtin cd "$@" && ls -F
}

# Kill whatever process is listening on a port
function pkill() {
  kill -9 `lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2; }'`
}

# Ignore case and better tab completion 
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"


