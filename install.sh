# 1. software
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update
brew install rbenv ruby-build
eval "$(rbenv init -)"	# but put this in a dotfile
rbenv install 2.1.0		# ... or a newer one. rbenv install -l will list available rubies


mkdir backups
mv ~/.zshrc backups/
mv ~/.profile backups/

ln -sfhv dot/zshrc ~/.zshrc
ln -sfhv dot/profile ~/.profile
