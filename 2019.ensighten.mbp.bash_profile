# file: /Users/tim.siwula/.bash_profile

alias l="clear && pwd && ls -la"

# add clang7 to path for R
export PATH=/usr/local/clang7/bin:$PATH

# shortcuts
# ------------------------------------------------------------------------------
alias spui="cd /Users/tim.siwula/dev/privacy-ui && java -Dspring.profiles.active=development -jar privacy-web/target/privacy-web.war"
alias spw="cd ~/dev/privacy-ui/privacy-web/ && gulp serve"
alias dev="cd /Users/tim.siwula/dev && clear && pwd"
alias intel="cd /Users/tim.siwula/dev/dataintelligence-ansible && clear && pwd"
alias dotfiles="cd /Users/tim.siwula/dev/dotfiles && clear && pwd"

# system util shortcuts
#alias port="lsof -i tcp:" # port4444 != correct
function port() { lsof -i tcp:"$1" ; } # port 4444
# TODO finish ^ port()
# https://stackoverflow.com/questions/7131670/make-a-bash-alias-that-takes-a-parameter

alias kil="kill -9"

# TO DO:
# replace "cat file.txt | less" --> peek file.txt
#alias peek="cat ($VAR) | less"

alias addssh="atom /Users/tim.siwula/.ssh/config"

alias reedis="ssh -f tsiwu978@stage.ui.privacy.ensighten.com -L 5500:stage.redis.manage.ensighten.com:6379 -N"
alias pui="cd /Users/tim.siwula/dev/privacy-ui && clear && pwd"
alias ipui="mvn clean install -P development"
alias jpui="java -Dspring.profiles.active=development -jar privacy-web/target/privacy-web.war"

alias front="cd /Users/tim.siwula/dev/privacy-ui/privacy-web && clear && pwd"
alias start_front="npm run setup && gulp serve"

alias start_backend="reedis && pui && ipui && jpui"
alias start_frontend="front && start_front"

alias start_backend_in_background="start_backend &"
alias sbb="start_backend &"

alias start_frontend_in_background="start_frontend &"
alias sfb="start_frontend &"

alias start="start_backend_in_background start_frontend_in_background"

# alias backend="cd /Users/tim.siwula/dev/privacy-ui && clear && pwd"

# alias cmd1="clear && whoami"
# alias cmd2="hostname"

alias spui="cd /Users/tim.siwula/dev/privacy-ui && java -Dspring.profiles.active=development -jar privacy-web/target/privacy-web.war"

alias pipeline="cmd1 && cmd2"

# start front
# start back
# reedis

alias mt="cd ~/dev/privacy-ui/ && mvn test"
alias pu="cd /Users/tim.siwula/dev/privacy-ui && clear && pwd"

alias puw="cd /Users/tim.siwula/dev/privacy-ui/privacy-web && clear && pwd"
alias privui="puw"
alias priv="puw"

alias gateway="cd /Users/tim.siwula/dev/privacy-gateway && clear && pwd"
alias privg="cd /Users/tim.siwula/dev/privacy-gateway && clear && pwd"

# git shortcuts
alias addg="atom ~/.gitignore"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gr="git remote -v"
alias bu="brew update && brew upgrade && brew cleanup"
alias gc="git commit -m"
alias gp="git push"
alias ga="git add ."
alias gpull="git pull"

alias sho="ls -la | less"

alias projects="cd /Users/tim.siwula/Desktop/projects && clear && pwd && ls -la"
alias dev="cd /Users/tim.siwula/dev && clear && pwd && ls -la"
alias stagging="cd /Users/tim.siwula/Desktop/projects/ensighten/staging"
alias prod="cd /Users/tim.siwula/Desktop/projects/ensighten/production"

alias c="clear"
alias addc="atom ~/.bash_profile"
alias uc="source ~/.bash_profile"
alias dk="cd /Users/tim.siwula/Desktop"
alias dl="cd /Users/tim.siwula/Downloads"
alias h="history"
# ------------------------------------------------------------------------------

# git shortcuts
# ------------------------------------------------------------------------------
# shows file names that were changed
alias gitfiles="git log --stat"

# add new changes to last commit
alias gitaddnew="git commit --amend"

# show the changes/lines you changed
alias gitshow="git diff"

# alias gitfiles="git log --stat"
# alias gitfiles="git log --stat"
# alias gitfiles="git log --stat"

# ------------------------------------------------------------------------------

# hostname terminal styling
# directory path + emoji command prompt
export PS1="🚀\w:🍺~"

# bash completion support
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# add java to path
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# brew nodejs sym links
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# node version manager support (nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# java version manager support (jenv)
export PATH="$HOME/.jenv/bin:$PATH"
export JENV_ROOT=/usr/local/opt/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# ruby version manager (rvm)
eval "$(pyenv init -)"

# nice coloring for bash terminal
export CLICOLOR=1

# zlib compiler support for python pyenv
# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/sqlite/lib/pkgconfig"

# go support
export PATH=$PATH:$(go env GOPATH)/bin

# brew oauth-toolkit vpn support?
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"
# added by Anaconda2 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda2/etc/profile.d/conda.sh" ]; then
#         . "/anaconda2/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda2/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
