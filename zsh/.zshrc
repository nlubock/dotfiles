# ── Path ──────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

# ── Reset Kitty keyboard protocol (prevents CSI u leaking as raw text) ──
printf '\e[<u'

# ── History ───────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# ── Completion ────────────────────────────────────────
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ── Tool init ─────────────────────────────────────────
# ── FZF Catppuccin Latte ─────────────────────────────
export FZF_DEFAULT_OPTS=" \
--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39 \
--color=selected-bg:#bcc0cc"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# ── Aliases ───────────────────────────────────────────
alias ls="eza --icons --group-directories-first"
alias ll="eza -la --icons --group-directories-first --git --sort=modified --reverse"
alias la="eza -la --icons --group-directories-first --git"
alias tree="eza --tree --icons"
alias cat="bat --paging=never"
alias top="btop"
alias vim="nvim"

# ── Editor ────────────────────────────────────────────
export EDITOR="nvim"
export VISUAL="nvim"
