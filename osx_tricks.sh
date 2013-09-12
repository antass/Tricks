# Show hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles TRUE
killall Finder

# Hide hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles FALSE
killall Finder

