# Load nodenv automatically by appending
# the following to ~/.zshrc:
echo "Initialising nodenv"

if (( $+commands[nodenv] ))
then
  eval "$(nodenv init -)"
fi
