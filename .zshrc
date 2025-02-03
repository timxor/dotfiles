# ~/.zshrc

# global git ignore file
# ~/.gitignore_global

# set homebrew directory
eval "$(/opt/homebrew/bin/brew shellenv)"


alias home="cd /Users/timbo && clear && pwd"

alias codee="cd /Users/timbo/code && clear && pwd"
alias dk="cd /Users/timbo/Desktop && clear && pwd"
alias desktop=dk
alias dl="cd /Users/timbo/Downloads && clear && pwd"
alias downloads=dl
alias bu="brew update && brew upgrade && brew cleanup"
alias addcommand="code ~/.zshrc"
alias addc="addcommand"
alias updatecommand="source ~/.zshrc"
alias uc="updatecommand"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"
alias deploy="bash deploy_script.sh"
alias leetcode="cd /Users/timbo/code/lc && clear && pwd && atom ."
alias lc="leetcode"




# confluence api key
# export CONFLUENCE_API

# go lang
set GOROOT=/usr/local/go/bin/go

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# add java home for java 17 - verify with - echo $JAVA_HOME
export JAVA_HOME=/Users/timbo/.sdkman/candidates/java/17.0.12-oracle/bin/java

# Add .NET Core SDK tools
export PATH="$PATH:/Users/timbo/.dotnet/tools"

# chatgpt-terminal demo cli repo github - /Users/timbo/code/chatgpt-terminal
alias gpt="python3 /usr/local/bin/gpt_cli.py"
alias timbot="gpt"

# export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH="$PATH:/Applications/Atom.app/Contents/Resources/app/atom.sh"
export PATH="$HOME/.docker/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH

# homebrew path
export PATH="$PATH:/opt/homebrew/bin/"

# zsh history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# auto complete with tab
autoload -U compinit
compinit
if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    autoload -Uz compinit
    compinit
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# Load Angular CLI autocompletion.
source <(ng completion script)



# ruby
# rbenv - rbenv is a tool that lets you easily switch between multiple versions of Ruby
# and ruby-build - is an rbenv plugin that provides an rbenv install command to compile and install different versions of Ruby.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/timbo/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)


# python
alias python="python3"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init --path)"


# nvm - node
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"



# fix history
alias history="history 1"


#
# END

# bun completions
[ -s "/Users/timbo/.bun/_bun" ] && source "/Users/timbo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# add Pulumi to the PATH
export PATH=$PATH:/Users/timbo/.pulumi/bin
export PATH="$PATH:/Users/timbo/.local/bin" # Added by Docker Labs Debug Tools"

eval "$(gh copilot alias -- zsh)"
export PATH="$PATH:$(npm prefix -g)/bin"
