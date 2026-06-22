#!/bin/zsh

# ── Keyboard ──────────────────────────────────────────────────────
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10


# ── Finder ────────────────────────────────────────────────────────
defaults write com.apple.finder AppleShowAllFiles -bool true          # show hidden files
defaults write com.apple.finder ShowPathbar -bool true                # show path bar
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"  # search current folder by default
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true    # full path in title bar
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"  # list view default


