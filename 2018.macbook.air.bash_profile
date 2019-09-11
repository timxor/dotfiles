# Author: Tim Siwula
# file: ~.bash_profile

alias acceptance="cd /Users/personal/dev/acceptance.ai && clear && pwd"
alias dotfiles="cd /Users/personal/dev/dotfiles && clear && pwd"

# git shortcuts
alias addg="atom ~/.gitignore"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gr="git remote -v"
alias bu="brew update && brew upgrade && brew cleanup"

# hostname terminal styling
# directory path + emoji command prompt
export PS1="\w:🍻"




alias emoji="cd /Users/tim.siwula/code/emoji && pwd && ls"

alias problems="cd /Users/tim.siwula/code/problems/ && pwd && ls"
alias dev="cd /Users/personal/dev && clear && pwd && ls -la"
alias codee="cd /Users/tim.siwula/code && pws && ls"
alias dk="cd /Users/personal/Desktop && clear && pwd"
alias deploy="bash deploy_script.sh"

# 'sp': show permissions of a file
alias sp="stat -f \"%A %N\" *"

# alias shortcut keys
alias a="atom"
alias addcommand="atom ~/.bash_profile"
alias addc="addcommand"
alias updatecommand="source ~/.bash_profile"
alias uc="updatecommand"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"
alias addssh="atom ~/.ssh/config"
alias deploy="bash deploy_script.sh"
alias google="gcloud compute ssh high-memory-instance1-zone-us-west1a-260-per-month"
alias gs="git status"
alias gb="git branch"
alias scrn="screen -dr"
alias show="screen -list"
alias chrome="open -a \"Google Chrome\""
alias gpull="git pull origin master"
alias gpush="git push origin master"
