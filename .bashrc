#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="/home/$USER/Bin:$PATH"
export EDITOR='nvim'

# alias uname -r='cat 9.0.0-rc-arch1-1'
alias ls='exa'
alias l='ls -l'
alias lsl='ls -lah'
alias clsl='clear && lsl'
alias grep='grep --color=auto'
alias cat='bat'
alias hexdump='hexyl'

alias lg='lazygit'

alias py='python3'
alias rg_nop='rg'
alias rg='rg -p -i -. --no-ignore --include-zero -n'
alias lrg='l | rg'
alias ltrg='ls -T | rg'

alias src='source ~/.zshrc'

alias rofi='rofi -show drun'

alias todo='nvim ~/Md/todo.md'
alias zshrc='nvim ~/.zshrc'
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.config/nvim/init.lua'
alias unsw='nvim ~/Sh/tmux_alias.sh'
alias md='nvim ~/Md'
alias buy='nvim ~/Md/buy.md'

alias g='git'

alias pwd='pwd | clip'

alias clip='tee >(wl-copy)'

alias d='dolphin'

# TEMP

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
export PATH="$HOME/Bin:$PATH"
