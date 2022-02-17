#
# file: /Users/tim/.zshrc
# computer: 2021 macbook pro
# open: atom ~/.zshrc
# update: source ~/.zshrc
#


alias addcommand="atom ~/.zshrc"
alias addc="atom ~/.zshrc"
alias uc="source ~/.zshrc"
alias update="source ~/.zshrc"

#  global git ignore file:
#    ~/.gitignore_global
alias addgit="atom ~/.gitignore_global"



alias c="clear"
alias h="history"

alias dk="cd /Users/tim/Desktop && clear && pwd"
alias dl="cd /Users/tim/Downloads && clear && pwd"
alias code="cd /Users/tim/code && clear && pwd"

alias deploy="bash deploy_script.sh"




#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit ; compinit

export PATH="$PATH:/Users/tim/Library/Application Support/Coursier/bin"

export NVM_DIR="/Users/tim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# homebrew silent warning
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

# gpg auto sign commit messages
# https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# zsh completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi


# hadoop
JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

## HADOOP env variables
export HADOOP_HOME="/usr/local/Cellar/hadoop/3.3.1/libexec"
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

## HIVE env variables
export HIVE_HOME=/usr/local/Cellar/hive/3.1.2_3/libexec
export PATH=$PATH:/$HIVE_HOME/bin
export GPG_TTY=$(tty)

# golang
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"
export GPG_TTY=$(tty)
