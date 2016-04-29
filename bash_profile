# changes the bash prompt to be colorized, and rearranges the 
# prompt to be “username@hostname:cwd $”
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# enables command line colors
export CLICOLOR=1

# -G colorizes output, -h makes sizes human readable, and -F throws a / 
# after a directory, * after an executable, and a @ after a symlink
export LSCOLORS=ExFxBxDxCxegedabagacad

# defines colors for the ls command
alias ls='ls -GFh'
