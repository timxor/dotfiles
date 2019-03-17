#-----------------------------------------------------------------------------
# Tim Siwula -- github@timsiwula.com
# file: ~/.zshrc
# computer: 2017-imac
# github: https://github.com/tcsiwula/bash_code/blob/master/config_files/.bash_profile
# updated: 10/24/2018
#-----------------------------------------------------------------------------
# file path:  ~/.zshrc
# edit: atom ~/.zshrc
# update: source ~/.zshrc
#-----------------------------------------------------------------------------
# shortcuts: addcommand => atom ~/.zshrc
# shortcuts: updatecommand => source ~/.zshrc
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ALIAS COMMANDS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

alias dotfiles="cd /Users/tim.siwula/code/dotfiles && pwd && ls && pwd"
alias problems="cd /Users/tim.siwula/code/problems && pwd && ls && pwd"
alias deploy="bash /usr/local/bin/deploy_script.sh"


# visual studio code editor cli
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# pyenv shell
eval "$(pyenv init -)"


# custom colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFhla'
alias l='less'
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/

# alias benchp="cd $HOME/Desktop/consensys/bench_project/parity && pwd && ls -la"
# alias benchc="cd $HOME/Desktop/consensys/bench_project/cpp-ethereum && pwd && ls -la"
# alias benchg="cd $HOME/Desktop/consensys/bench_project/go-ethereum && pwd && ls -la"
#alias google="gcloud compute ssh high-memory-instance1-zone-us-west1a-260-per-month"
alias projects="cd /Users/tim.siwula/code && clear && ls -la"
#alias bash_code="cd $HOME/Dropbox/Projects/bash_code && pwd"
# alias nc="cd /Users/tim.siwula/Desktop/pier && pwd && git branch"
alias a="atom"
#alias commit="cd /Users/tim.siwula/Dropbox/Projects/commit-react-native && pwd"
alias addcommand="code ~/.zshrc"
alias addc="addcommand"
alias updatecommand="clear && source ~/.zshrc"
alias uc="updatecommand"
#alias fae="cd /Users/tim.siwula/Documents/projects/Fae && pwd"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"
alias addssh="code ~/.ssh/config"
alias sp="stat -f \"%A %N\" *"     # show permissions
#alias bashcode="cd /Users/tim.siwula/ClionProjects/bash_code && pwd"
alias dk="cd /Users/tim.siwula/Desktop && clear && ls -la"
#alias itimmy="cd /Users/tim.siwula/WebstormProjects/itimmy"
alias notes="cd /Users/tim.siwula/Dropbox/notes && pwd && ls -la"
#alias startGeth="geth --rpcapi eth,web3,personal --rpc"
alias dl="cd ~/Downloads && pwd"
#alias hcdb="pgcli -h happychaindb.ciqykqusf0nv.us-west-1.rds.amazonaws.com -p 5432 -U devapp0 happychaindb"
alias addg="code ~/.gitignore_global"
#alias mojo="cd /Users/tim.siwula/Desktop/mojoapp/client/Mojo && pwd"

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 terminal command prompt icon
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# basic cli



# different colors for directory/file
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# directory path + emoji command prompt
export PS1="timbo@%d:🥺⌗ "

#export PS1="happy_imac ->"
#PS1='\W\$ '
#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] [\w]\[\033[00m\]'

# broken againter
#export PS1="\[\033[01;32m\]\[\033[01;34m\][\w]\[\033[00m\]$"

# broken one
#export PS1='happy_imac/\[\033[01;32m\]\u[\w]\[\033[00m\]'

#
#export PS1='happy_mbp/\[\033[01;32m\]\[\033[00m\]'





#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 python3 / pip3 / virtualenv
# https://github.com/donnemartin/dev-setup/issues/80#issuecomment-431379721
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# if [ -f ~/.local/bin/virtualenvwrapper.sh ] ; then
# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# export VIRTUALENVWRAPPER_VIRTUALENV=~ /.local/bin/virtualenv
# source ~/.local/bin/virtualenvwrapper.sh
# fi
# export PATH="$PATH:/usr/sbin"



#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ENVIROMENT VARIABLE CONFIGURATIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# gpg version conflict
export GPG_TTY=$(tty)

# go
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="/Users/tim.siwula/go"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# # llvm
# export PATH="/usr/local/opt/llvm/bin:$PATH"

# default mac path: /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# use homebrew installed git as default git version
export PATH="/usr/local/bin:${PATH}"

# HASKELL
export PATH=$PATH:/Users/tim.siwula/.local/bin

# postgresql database server config
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# javacc script link
#export PATH=$PATH:/Users/timsiwula/tools/javacc-5.0/bin

# Init jenv
#if which jenv > /dev/null; then eval "$(jenv init -)"; fi
#export JAVA_HOME=$(/usr/libexec/java_home)

#nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 GREETING
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "#|----------------------------------------------------------------------------|"
echo "#|                       What's up Tim?    ^_^   =]    :)                     |"
echo "#|----------------------------------------------------------------------------|"
echo "#|                       remote servers:                                      |"
echo "#|----------------------------------------------------------------------------|"
echo "#|                       ssh my_server  ==>  [todo: set up a google server]   |"
echo "#|----------------------------------------------------------------------------|"

# react native android settings
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# OPAM configuration
. /Users/tim.siwula/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH="$HOME/.cargo/bin:$PATH"


# cabal / ghc / haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="/Users/tim.siwula/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

## ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

#source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export PATH="$HOME/.npm-packages/bin:$PATH"

#export PATH="/usr/local/opt/ghc@8.2/bin:$PATH"

#export PATH="/usr/local/opt/binutils/bin:$PATH"

#export PATH="/usr/local/opt/libpq/bin:$PATH"

#export PATH="/usr/local/opt/llvm/bin:$PATH"

#export PATH="~/.local/bin/"

#PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
#export PATH
#export PATH="/usr/local/bin:$PATH"

export NVM_DIR=~/.nvm

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"



# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH"
# export PATH



# jupyter cli
PATH=/Users/tim.siwula/Library/Python/3.7/bin:$PATH
export PATH
