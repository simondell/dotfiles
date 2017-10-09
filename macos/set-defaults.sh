##########################################
## System tweak script
##
## Taking suggestions from:
## - http://www.macworld.co.uk/mac/masterclass/?articleid=3376170
## - http://osxdaily.com/2011/12/12/hide-spotlight-menu-icon-mac-os-x/
## - http://osxdaily.com/2011/07/04/show-library-directory-in-mac-os-x-lion/
## - zach: https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
##########################################
# Disable press-and-hold for keys in favor of key repeat.
# defaults write -g ApplePressAndHoldEnabled -bool false


# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1


# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1


# Dock
# defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock pinning start;killall Dock
defaults write com.apple.dock pinning start;killall Dock
defaults write com.apple.dock no-glass -boolean YES
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'



# Safari
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25


# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true


# turn the spotlight icon off - also kills the keyboard shortcut (i think)
# sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# ... or on:
#sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search


# make Library visible
chflags nohidden ~/Library/
# ... or inivisble
#chflags hidden ~/Library


# finder settings
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true



##########################################
## do the resets
##########################################

killall SystemUIServer
killall Dock
