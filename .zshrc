# ------------------- KEYBINDS REFERENCE --------------------
# MOVEMENT:
#   -> Move by WORD :: Ctrl + Left | Ctrl + Right
#   -> Move to START/END of line :: Ctrl + A | Ctrl + E
#
#   -> Delete previous WORD :: Ctrl + W
#   -> Delete next WORD :: Alt + D
#   -> Delete to start/end of LINE :: Ctrl + U | Ctrl + K 




# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
#
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# export PATH="$HOME/.emacs.d/bin:$PATH"
# export PATH="$HOME/.ghcup/bin:$PATH"
#
# #if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
# #  tmux attach-session -t default || tmux new-session -s default
# #fi
#
#
# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.bashrc

# CDPATH=".:$HOME/Code"
# CDPATH=".:$HOME/UNSW/sshfs"
# CDPATH=".:$HOME/UNSW/offline/"
# CDPATH=".:$HOME/md/"
setopt HIST_IGNORE_ALL_DUPS
# autoload compinit && compinit
zstyle ':completion:*' menu select # highlight selected match
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' # case and -/_ insensitive


# ------------------------ KEYBINDS -------------------------
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
# Make Ctrl+Left/Right move by word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
# Make Ctrl+Backspace delete previous word
bindkey '^H' backward-kill-word
# Make Ctrl+Delete delete next word
bindkey '^[[3;5~' kill-word
# Make Home/End keys go to line boundaries
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
# ------------------------------------------------
