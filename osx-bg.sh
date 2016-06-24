# disable gamed calling out
defaults write com.apple.gamed Disabled -bool true

# display full posix path in finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# dont create .DS_Store on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true




