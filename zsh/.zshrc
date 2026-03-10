# ── Path ──────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

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
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# ── Aliases ───────────────────────────────────────────
alias ls="eza --icons --group-directories-first"
alias ll="eza -l --icons --group-directories-first --git --sort=modified --reverse"
alias la="eza -la --icons --group-directories-first --git"
alias tree="eza --tree --icons"
alias cat="bat --paging=never"
alias top="btop"
alias vim="nvim"

# ── Editor ────────────────────────────────────────────
export EDITOR="nvim"
export VISUAL="nvim"
