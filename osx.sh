##########################################
## System tweak script
##
## Taking suggestions from:
## - http://www.macworld.co.uk/mac/masterclass/?articleid=3376170
## - http://osxdaily.com/2011/12/12/hide-spotlight-menu-icon-mac-os-x/
## - http://osxdaily.com/2011/07/04/show-library-directory-in-mac-os-x-lion/
## - zach: https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
##########################################




##########################################
## SystemUI tweaks
##########################################

# turn the spotlight icon off - also kills the keyboard shortcut (i think)
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# ... or on:
#sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search


# make Library visible
chflags nohidden ~/Library/
# ... or inivisble
#chflags hidden ~/Library

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle clmv




##########################################
## system defaults
##########################################

# 2D dock
defaults write com.apple.dock no-glass -boolean YES

# add a "recent apps" stack
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'




##########################################
## Safari flags
##########################################

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true



##########################################
## do the resets
##########################################

killall SystemUIServer
killall Dock