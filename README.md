# settings
shell settings or the like

## hide dock and speed up dock show
```
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock
```
