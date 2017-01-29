#!/bin/bash

#
# Installs homebrew + cask
#
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || true
brew tap caskroom/cask || true

brew install vim || true

#
# Install RVM and Ruby
#
brew install gpg2 || true
curl -sSL https://get.rvm.io | bash -s stable --ruby || true

#
# Install Apps via brew cask
#
brew cask install atom || true
brew cask install iterm2 || true
brew cask install vagrant || true

brew cask install spotify || true
brew cask install 1password || true
brew cask install google-chrome || true

#
# Install YADR
#
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`" -s ask || true

#
# Install Gloabl gems
#
gem install bundler

#
# Install NodeJS and Global modules
#
brew install node
npm install -g prettyjson

#
# Set up Terminal
#
echo "prompt sorin" > ~/.zsh.after/theme.zsh
echo "alias nitro=~/Projects/PHRG/nitro-web" > ~/.zsh.after/phrg-aliases.zsh