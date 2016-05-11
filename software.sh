# zsh
chsh -s /bin/zsh

# xcode command-line
#xcode-select --install 
# opens a couple of dialogs that need confirming

# brew and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask

# software
brew cask install dropbox
brew cask install google-chrome
brew cask install chrome-devtools
brew cask install firefox
brew install rbenv ruby-build
brew cask install sublime-text
brew cask install iterm2

