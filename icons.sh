#!/bin/bash

# Author: Mike Mackenzie
# Hides or shows all desktop icons useful if you want an unclutered desktop on
# OS X. People do say that it also helps speed up the computer as the sytsem
# isn't generating thumbnails all the time. Whatever, you know the Internet...
# lies, lies everywhere! 

if [ $1 == 'show' ]; then
    defaults write com.apple.finder CreateDesktop -bool true
    killall Finder
fi

if [ $1 == 'hide' ]; then
    defaults write com.apple.finder CreateDesktop -bool false
    killall Finder
fi

