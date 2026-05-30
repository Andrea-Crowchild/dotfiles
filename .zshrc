# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hexbeak/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ── Aliases ──────────────────────────────────────────────────────────────────
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim='nvim'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias rm='rm -i'
alias ls='eza'
alias please='sudo'

# ── PATH ─────────────────────────────────────────────────────────────────────
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/home/hexbeak/.local/bin"
export PATH="$HOME/bin:$PATH"

# ── Vi mode ──────────────────────────────────────────────────────────────────
bindkey -v

# Block cursor in normal mode, line cursor in insert mode
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '\e[2 q'
  else
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select
echo -ne '\e[6 q'

# ── Prompt ───────────────────────────────────────────────────────────────────
PROMPT='[%n@%m %1~]$ '

# ── Plugins ──────────────────────────────────────────────────────────────────
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ── Tools ────────────────────────────────────────────────────────────────────
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

eval "$(starship init zsh)"
