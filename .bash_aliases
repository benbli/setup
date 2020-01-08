# Git aliases
alias gs='git status '
alias ga='git add '
alias gp='git push'
alias gb='git branch '
alias gc='git commit '
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gac="git add . && git commit -m" # + commit message
alias gi="git init && gac 'Initial commit'"

# OSX
alias reload='source ~/.bash_profile && source ~/.bashrc'
alias la='ls -la'
alias ls='ls -GFh'
alias ~='cd ~'
alias b="cd .."

# IP Address
alias ip="ipconfig getifaddr en0"

# NPM packages
alias bs="browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000"

# Homebrew
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

# Clear OS cache
alias clean='rm -rf /Users/len/Library/Caches/*'
