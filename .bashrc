#
# ~/.bashrc
#
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# If not running interactively, don't do anything
alias vim='nvim'
[[ $- != *i* ]] && return
alias mv='mv -i'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias rm='rm -i'
PS1='[\u@\h \W]\$ '
export PATH="~/.cargo/bin:$PATH"
alias ls='eza'
alias please='sudo'
# Created by `pipx` on 2026-04-20 22:40:11
export PATH="$PATH:/home/hexbeak/.local/bin"
export PATH="$HOME/bin:$PATH"

eval "$(zoxide init bash)"

eval "$(fzf --bash)"
