# file: /Ubuntu/home/.profile
#
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



alias h="history"
alias addcommand="nano ~/.profile"
alias addc="addcommand"
alias updatecommand="clear && source ~/.profile"
alias uc="updatecommand"
alias c="clear"
alias C="clear"

# y=yes, q=quiet
# pipe all output: "> /dev/null"

alias upgrade="sudo apt-get --yq && sudo apt-get upgrade -yq"
alias restart="sudo /sbin/reboot"
