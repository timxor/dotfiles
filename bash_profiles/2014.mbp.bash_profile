# Author: Tim Siwula
# Date: 11/05/2019
# File: ~/.bash_profile
# Computer: macbook pro 2014
#
# related files:
#     1. $ZDOTDIR/.zprofile
#     2. $ZDOTDIR/.zshenv
#     3. $ZDOTDIR/.zlogin
#     4. $ZDOTDIR/.zlogout
#     5. ~/.profile
#

alias addcommand="atom ~/.bash_profile"
alias addcc="atom ~/.zshrc"

alias addc="addcommand"
alias updatecommand="source ~/.bash_profile && source ~/.zshrc"
alias uc="updatecommand"





alias bu="brew update && brew upgrade && brew cleanup"
alias dev="cd /Users/tim.siwula/dev && clear && pwd && ls -la"
alias dotfiles="cd /Users/tim.siwula/dev/dotfiles && clear && pwd && ls -la"

alias resume="cd /Users/tim.siwula/dev/tim/resume && clear && pwd && ls -la"
alias compile_r="pdflatex resume-timothy-siwula.tex"
alias move_r="cp resume-timothy-siwula.pdf ~/Desktop/"
alias open_r="open ~/Desktop/resume-timothy-siwula.pdf"
alias compile_resume="resume && compile_r && move_r && open_r"


alias pycharm="open /Applications/PyCharm\ CE.app"
alias pc="open /Applications/PyCharm\ CE.app"
alias prob="cd /Users/tim.siwula/dev/problems && pwd && ls -la"
alias emoji="cd /Users/tim.siwula/dev/emoji && pwd && ls"
alias problems="cd /Users/tim.siwula/dev/problems/ && pwd && ls"
alias deploy="bash deploy_script.sh"

# 'sp': show permissions of a file
alias sp="stat -f \"%A %N\" *"

# add brew directory to default search path
export PATH="/usr/local/Cellar:$PATH"

# golang dev path configs
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export GOROOT=/usr/local/opt/go/libexec
export GOROOT="/usr/local/go"
export GOPATH="/Users/tim.siwula/go" # directory of your go workspace
export PATH="/Users/tim.siwula/go/bin:$PATH"

# local projects on macbook
alias projects="cd /Users/tim.siwula/dev && ls && pwd"

# cuda gpu devlopment config
# export PATH=/usr/local/code/bin:$PATH

# android development: ndk lib for ml/ai tensorflow
export PATH="$PATH:/Users/tim.siwula/Documents/Android/NDK/android-ndk-r10b"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# alias shortcut keys
alias a="atom"
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

# TODO: find old deploy script =)
# at here /usr/local/bin/deploy_script.sh

#-----------------------------------------------------------------------------
#                 LOCATIONS
#-----------------------------------------------------------------------------
alias bashcode="cd /Users/tim.siwula/ClionProjects/bash_code && pwd"
alias dk="cd /Users/tim.siwula/Desktop/"
alias itimmy="cd /Users/tim.siwula/WebstormProjects/itimmy"
alias notes="cd /Users/tim.siwula/Dropbox/notes && pwd && ls -la"
##alias react="cd /Users/timsiwula/WebstormProjects/reactjs/sb_tutorial && pwd"
#alias p1="cd /Users/timsiwula/Dropbox/cs451_fall_2016/project/"
#alias compilers="cd /Users/timsiwula/Dropbox/code/svn/tcsiwula/cs414 && pwd"
#alias commit="git commit -S -m"
#alias geth="geth --rpcapi eth,web3,personal --rpc"
#alias ai="cd /Users/timsiwula/WebstormProjects/AI_JavaBridge && pwd"
#alias dl="cd ~/Downloads && pwd"
#alias run="bash compile_script.sh | /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk http://localhost:8888/"
#alias hcdb="pgcli -h happychaindb.ciqykqusf0nv.us-west-1.rds.amazonaws.com -p 5432 -U devapp0 happychaindb"
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 PATH SENESTIVE
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                   GREETING MESSAGE
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# #-----------------------------------------------------------------------------
# echo "+"
# echo "++"
# echo "~~~~~~~ Hello Tim ~~~~~~~ "
# echo "++"
# echo "+"
# #-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ENVIROMENT VARIABLE CONFIGURATIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



# default mac path: /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin


# use homebrew installed git as default git version
export PATH="/usr/local/bin:${PATH}"



#-----------------------------------------------------------------------------
# terminal command prompt icon
#-----------------------------------------------------------------------------
export PS1="=>"
#-----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# postgresql database server config
#-----------------------------------------------------------------------------
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# javacc script link
#-----------------------------------------------------------------------------
#export PATH=$PATH:/Users/timsiwula/tools/javacc-5.0/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# React Native -- Android Setup
#-----------------------------------------------------------------------------
#export ANDROID_HOME=/usr/local/opt/android-sdk
#-----------------------------------------------------------------------------
# Enable Gradle Daemon for Android speed up
#-----------------------------------------------------------------------------
#touch ~/.gradle/gradle.properties && echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Init jenv
#-----------------------------------------------------------------------------
#if which jenv > /dev/null; then eval "$(jenv init -)"; fi
#export JAVA_HOME=$(/usr/libexec/java_home)
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# MacPorts PATH variable
#-----------------------------------------------------------------------------
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Bash profile sync
#-----------------------------------------------------------------------------
#source ~/.profile
#-----------------------------------------------------------------------------


# sync zsh with bash
#[[ -f ~/.bashrc ]] && . ~/.bashrc





# locale settings, string mac/chinese/pycharm/git bug
# https://coderwall.com/p/ehvc8w/set-lang-variable-in-osx-terminal-app
export LANG="en_EN.UTF-8"
export LC_COLLATE="en_EN.UTF-8"
export LC_CTYPE="en_EN.UTF-8"
export LC_MESSAGES="en_EN.UTF-8"
export LC_MONETARY="en_EN.UTF-8"
export LC_NUMERIC="en_EN.UTF-8"
export LC_TIME="en_EN.UTF-8"
export LC_ALL=






#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 SHELL FUNCTIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
alias blah='function _blah(){ echo "First: $1"; echo "Second: $2"; };_blah'
alias addalias='function _addalias(){ "alias $1 = $2 >> ~/.bash_profile"; };_addalias'
alias showremotebranches="git ls-remote --heads origin"
alias cpu_server="gcloud compute ssh cpu-server"
alias copy_bash_profile_to_profile="sudo cat ~/.bash_profile >> ~/.profile && source ~/.profile"
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/tim.siwula/google-cloud-sdk/path.bash.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/tim.siwula/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$PATH:/Users/tim.siwula/bin
export PATH="/usr/local/sbin:$PATH"




# open vpn
export PATH=$(brew --prefix openvpn)/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
