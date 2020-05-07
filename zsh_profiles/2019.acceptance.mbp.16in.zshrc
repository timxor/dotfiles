# atom ~/.zshrc
#
# source ~/.zshrc

# ssh -i ~/.ssh/constellation_keypair_t2_xlarge.pem admin@3.132.162.137


alias deploy="bash /usr/local/bin/deploy_script.sh"
alias bu="brew update && brew upgrade && brew cleanup"

alias dev="cd /Users/tim/developer && clear && pwd"
alias mobile="cd /Users/tim/developer/groundstandards/driver-onboarding && clear && pwd"

alias dk="cd /Users/tim/Desktop && clear"

alias h="history"
alias addcommand="atom ~/.zshrc"
alias addc="addcommand"
alias updatecommand="clear && source ~/.zshrc"
alias uc="updatecommand"
alias c="clear"
alias C="clear"

# different colors for directory/file
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# directory path + emoji command prompt
export PS1="mac@%d:😃$ "

# jenv java setup
if which jenv > /dev/null; then eval "$(jenv init -)"; fi



export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=${JAVA_HOME}:$PATH


# android SDK
export ANDROID_HOME=/Users/tim/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/android-ndk
# flutter doctor --android-licenses

# dart / flutter
#export PATH=/Users/tim/developer/flutter/bin:$PATH
export PATH=$PATH:~/developer/flutter/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tim/.sdkman"
[[ -s "/Users/tim/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tim/.sdkman/bin/sdkman-init.sh"
