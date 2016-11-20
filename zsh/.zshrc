# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nlubock/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


#######################################################################
#	SHELL STUFF
#######################################################################
alias ls='ls --color=auto'
alias ll='ls -Alrth'
alias la='ls -A'

alias rm='rm -i'
alias mv='mv -i'

alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'

# typos
alias ks='ls'
alias lks='ls'
alias kls='ls'

# fun
alias please='sudo $(fc -ln -1)'

alias tre-agrep='agrep'

#######################################################################
#	KEY BINDINGS
#######################################################################
# some keybindings since zsh doesnt source /etc/inputrc
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char


#######################################################################
#	PROMPT
#######################################################################
export PS1="[%n]%3~%% "


#######################################################################
#	PERL STUFF
#######################################################################
PATH="/home/nlubock/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/nlubock/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/nlubock/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/nlubock/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/nlubock/perl5"; export PERL_MM_OPT;
