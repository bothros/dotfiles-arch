#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# add dynamic sos4nt/dynamic-colors to path, and add autocompletion
export PATH="$HOME/.dynamic-colors/bin:$PATH"
export DYNAMIC_COLORSCHEMES="$HOME/.colorschemes"
source $HOME/.dynamic-colors/completions/dynamic-colors.bash
