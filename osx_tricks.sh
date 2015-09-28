## Toggle hidden files in Finder
# Show hidden files
defaults write com.apple.Finder AppleShowAllFiles TRUE
killall Finder

# Hide hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles FALSE
killall Finder

# Use Automator to do the same thing
# Open up Automator (in the Applications folder) and choose a Service template. 
# From the library choose "Run Shell Script" and drag it across to the workflow area. 
# In the text box paste the following command:

STATUS=`defaults read com.apple.finder AppleShowAllFiles`
if [ $STATUS == YES ]; 
then
    defaults write com.apple.finder AppleShowAllFiles NO
else
    defaults write com.apple.finder AppleShowAllFiles YES
fi
killall Finder

# Finally, change the "text" drop-down menu to “no input” and then save you workflow as “Toggle Hidden Files”.
# Now if you go to the Finder menu and look under Services, you should find a “Toggle Hidden Files” option. 
# To add the keyboard shortcut, go to the Keyboard section of System Preferences and click the Keyboard shortcuts tab. 
# Select Services from the list on the left, then scroll down to the bottom of the list on the right to 
# find “Toggle Hidden Files”. Double-click on the area to the right of it, then press the keyboard shortcut you want. 
# I used Command-Shift-. (dot).

## Show running / all apps in Dock
# Show all
defaults write com.apple.dock static-only -bool FALSE; killall Dock
# Show running
defaults write com.apple.dock static-only -bool TRUE; killall Dock
