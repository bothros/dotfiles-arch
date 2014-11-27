#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias pacman='sudo pacmatic'

# Add ruby gem directory to PATH
export PATH="$HOME/.gem/ruby/2.1.0/bin:$PATH"

# Make VMAIL use uzbl as the browser
export VMAIL_BROWSER='uzbl-browser'

# add dynamic sos4nt/dynamic-colors to path, and add autocompletion
export PATH="$HOME/.dynamic-colors/bin:$PATH"
export DYNAMIC_COLORSCHEMES="$HOME/.colorschemes"
source $HOME/.dynamic-colors/completions/dynamic-colors.bash
dynamic-colors switch white
