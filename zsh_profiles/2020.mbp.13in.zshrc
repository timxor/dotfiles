#
#  file:           .zshrc
#  date:           09/05/2020
#  author:         tim siwula <tim@acceptance.ai>
#
#  path:           /Users/client/Desktop/acceptance.ai/deploy/
#  host:           MacBook Pro (13-inch, 2020)
#  OS:             macOS Catalina - Version 10.15.6
#

alias resume"cd /Users/client/Documents/GitHub/timbo/resume"
alias tim="cd /Users/client/Documents/GitHub/timbo && clear && pwd && ls -la"
alias deploy="bash /usr/local/bin/deploy_script.sh"
alias dotfiles="cd /Users/client/Documents/GitHub/dotfiles && clear && pwd"
alias deploy-heroku="bash /Users/client/Desktop/acceptance.ai/deploy/deploy_to_heroku.sh"
alias satcom="cd /Users/client/Documents/GitHub/satcom/ && clear && pwd && ls -la"
alias addc="atom ~/.zshrc"
alias uc="source ~/.zshrc && clear"
alias c="clear"
alias C="clear"
alias test="cd /Users/client/Desktop/test && clear"
alias dev="cd /Users/client/Documents/GitHub && clear"
alias dk="cd /Users/client/Desktop && clear"
export NVM_DIR=~/.nvm

export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:`pwd`/flutter/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


export PATH="$PATH:`pwd`/flutter/bin"


alias bu="brew update && brew upgrade && brew cleanup"




export PATH=/Users/client/Documents/GitHub/flutter/bin:$PATH




# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize


source ~/.bash_profile

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/client/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/client/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/client/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/client/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
