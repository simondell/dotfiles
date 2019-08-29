# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate

#I don't recall where this line came from and can't find it in recent version of Zach's dotfiles
#zstyle :compinstall filename '/Users/simon.dell/.zshrc'

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
