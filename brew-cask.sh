#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
# brew tap caskroom/versions


# Dev
brew cask install iterm2
brew cask install visual-studio-code
brew cask install pgadmin4
brew cask install sequel-pro


# Daily
brew cask install flux
brew cask install spotify
brew cask install slack
brew cask install google-chrome


# Less Often
brew cask install vlc
#brew cask install utorrent

