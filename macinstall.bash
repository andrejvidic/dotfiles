#!/bin/bash

echo "Installing Brew and X-Code Command line tools "
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
xcode-select --install

echo "Prelimnary Setup"
brew update
brew upgrade

echo "Installing Postgresql and git"
brew install postgresql
brew install git

echo "Installing programming languages and highlevel language setup"
brew install go
brew install node
brew install python
brew install rbenv ruby-build
brew install ruby-build
brew update
brew doctor

echo "Install cask and others"
brew install caskroom/cask/brew-cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew install ffmpeg
npm install -g gitjk
brew install xclip

echo "Install Docker and its dependencies"
brew cask install virtualbox
brew install boot2docker
brew install docker
brew update
brew doctor

apps=(
echo "Installing General Apps"
spectacle
adobe-reader
dropbox
jdownloader
teamviewer
android-studio
evernote
hipchat
xquartz
onepassword
tigervnc-viewer
bittorrent-sync
filezilla
inkscape
keepassx
seamonkey
vagrant
chicken
firefox
intellij-idea-ce
skype
keka
silverlight
virtualbox
flash-player
ioquake3
lazarus
omnigraffle

echo "Installing Development Apps"
sourcetree
mysqlworkbench
postgres
java
github
macvim
openra
steam
atom
sublime-text3
echo "Installing Ops Apps"
cyberduck
citrix-receiver
)

brew cask install ${apps[@]}
echo "Cleaning up App installation..."
rm -rf /Library/Caches/Homebrew/*
echo "Complete!"

###To run...
#chmod -x macinstall.sh
###initiate installer with following command
#./macinstall.sh
