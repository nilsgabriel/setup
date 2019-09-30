#!/usr/bin/env bash
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Fix fonth smoothing
defaults -currentHost write -globalDomain AppleFontSmoothing -int 0

# Enable repeat on keydown
defaults write -g ApplePressAndHoldEnabled -bool false

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Switch Finder to use list mode
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show all filename extensions in Finder
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Set sidebar icon size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Show the ~/Library folder
chflags nohidden ~/Library

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Hide icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Disable sound effect when changing volume
defaults write -g com.apple.sound.beep.feedback -integer 0

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Set the icon size of Dock items to 26 pixels
defaults write com.apple.dock tilesize -int 26

# Trackpad: disable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 0
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 0

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable drop shadows from screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
