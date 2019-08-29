# get rbenv working for you
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
echo "Initialising rbenv"
# init according to man page
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
fi
