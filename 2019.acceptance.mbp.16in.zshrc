# atom ~/.zshrc
#
# source ~/.zshrc

# ssh -i ~/.ssh/constellation_keypair_t2_xlarge.pem admin@3.132.162.137

alias h="history"
alias addcommand="atom ~/.zshrc"
alias addc="addcommand"
alias updatecommand="clear && source ~/.zshrc"
alias uc="updatecommand"
alias c="clear"
alias C="clear"

alias deploy="bash /usr/local/bin/deploy_script.sh"




# jenv
# $(jenv init -)


alias bu="brew update && brew upgrade && brew cleanup"

alias dev="cd /Users/tim/developer && clear && pwd"
alias mobile="cd /Users/tim/developer/groundstandards/driver-onboarding && clear && pwd"

alias dk="cd /Users/tim/Desktop && clear"



# dart / flutter
export PATH=/Users/tim/developer/flutter/bin:$PATH




#android home
export ANDROID_HOME=/Users/tim/developer/android
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH


#android sdk root
export ANDROID_SDK_ROOT=/Users/tim/developer/android
export PATH=$ANDROID_SDK_ROOT:$PATH






# different colors for directory/file
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS


# directory path + emoji command prompt
export PS1="mac@%d:😃$ "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tim/.sdkman"
[[ -s "/Users/tim/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tim/.sdkman/bin/sdkman-init.sh"



# jenv setup
# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
