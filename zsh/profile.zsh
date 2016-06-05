# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/Users/simon.dell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000
bindkey -v
# End of lines configured by zsh-newuser-install

# coloured output
export CLICOLOR=1							# I think this sets colour mode, and there are other options along the lines of "xterm-256" or some such
export LSCOLORS=GxFxCxDxBxegedabagaced		# work out if these colours are best

# get rbenv working for you
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"

# Grunt completion
# - I should probably have a completions list, or dotfile
# eval "$(grunt --completion=zsh)"
