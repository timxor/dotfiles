# atom ~/.bash_profile
#
# source ~/.bash_profile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tim/.sdkman"
[[ -s "/Users/tim/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tim/.sdkman/bin/sdkman-init.sh"

# jenv setup
# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
