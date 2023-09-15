#/bin/bash
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `macos.sh` has finished
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

# Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" "

# ----- Finder -----------------------------------------------------------------
# Allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder "QuitMenuItem" -bool true
# defaults delete com.apple.finder "QuitMenuItem"

# Don't show all filename extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "false"
# defaults delete NSGlobalDomain "AppleShowAllExtensions"

# Don't show hidden files by default
defaults write com.apple.Finder "AppleShowAllFiles" -bool "false"
# defaults delete com.apple.Finder "AppleShowAllFiles"

# Display a warning when changing a file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "true"
# defaults delete com.apple.finder "FXEnableExtensionChangeWarning"

# Home directory is opened in the fileviewer dialog when saving a new document
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
# defaults delete NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud"

# Size of Finder sidebar icons
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"
# defaults delete NSGlobalDomain "NSTableViewDefaultSizeMode"

# Enable window animations and Get Info animations
defaults write com.apple.finder "DisableAllAnimations" -bool "false"
# defaults delete com.apple.finder "DisableAllAnimations"

# Set Downloads as the default location for new Finder windows
defaults write com.apple.finder "NewWindowTarget" -string "PfLo"
# defaults delete com.apple.finder "NewWindowTarget"

defaults write com.apple.finder "NewWindowTargetPath" -string "file://${HOME}/Downloads/"
# defaults delete com.apple.finder "NewWindowTargetPath"

# Show status bar
defaults write com.apple.finder "ShowStatusBar" -bool "true"
# defaults delete com.apple.finder "ShowStatusBar"

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"
# defaults delete com.apple.finder "ShowPathbar"

# Display full POSIX path as Finder window title
# defaults write com.apple.finder "_FXShowPosixPathInTitle" -bool "true"
# defaults delete com.apple.finder "_FXShowPosixPathInTitle"

# Keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# When performing a search, search the current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"
# defaults delete com.apple.desktopservices "DSDontWriteNetworkStores"

defaults write com.apple.desktopservices "DSDontWriteUSBStores" -bool "true"
# defaults delete com.apple.desktopservices "DSDontWriteUSBStores"

defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"
# defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "false"

# Show icons for hard drives, servers, and removable media on the desktop
# defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true"
# defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true"
# defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true"
# defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true"

# ----- Dock -------------------------------------------------------------------
# defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "orientation" -string "bottom"
# defaults write com.apple.dock "orientation" -string "right"

defaults write com.apple.dock "tilesize" -int "50"
# defaults delete com.apple.dock "tilesize"

# defaults write com.apple.dock "autohide" -bool "false"
defaults write com.apple.dock "autohide" -bool "true"
# defaults delete com.apple.dock "autohide"

# Remove the auto-hiding Dock delay
defaults write com.apple.dock "autohide-delay" -float 0
# defaults delete com.apple.dock "autohide-delay"

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock "autohide-time-modifier" -float 0
# defaults delete com.apple.dock "autohide-time-modifier"

# Don't show recent applications in Dock
defaults write com.apple.dock "show-recents" -bool false
# defaults delete com.apple.dock "show-recents"

# Change minimize/maximize window effect
# defaults write com.apple.dock "mineffect" -string "scale"
# defaults delete com.apple.dock "mineffect"

# ----- Screenshots ------------------------------------------------------------
# Remove the default shadow from screenshots
defaults write com.apple.screencapture "disable-shadow" -bool "true"
# defaults delete com.apple.screencapture "disable-shadow"

# Include date and time in screenshot filenames
defaults write com.apple.screencapture "include-date" -bool "true"
# defaults delete com.apple.screencapture "include-date"

# Set default screenshot location
defaults write com.apple.screencapture "location" -string "~/Desktop"
# defaults delete com.apple.screencapture "location"

# Display the thumbnail after taking a screenshot
defaults write com.apple.screencapture "show-thumbnail" -bool "true"
# defaults delete com.apple.screencapture "show-thumbnail"

# Choose the screenshots image format
defaults write com.apple.screencapture "type" -string "png"
# defaults delete com.apple.screencapture "type"

# ----- TextEditer -------------------------------------------------------------
defaults write com.apple.TextEdit "RichText" -bool "false"
# defaults delete com.apple.TextEdit "RichText"

# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit "PlainTextEncoding" -int 4
# defaults delete com.apple.TextEdit "PlainTextEncoding"

defaults write com.apple.TextEdit "PlainTextEncodingForWrite" -int 4
# defaults delete com.apple.TextEdit "PlainTextEncodingForWrite"

# ----- Menubar ----------------------------------------------------------------
# Digital clock format
# Thu 18 Aug 21:46:18
# defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""
# Thu 9:46:18
# defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE h:mm:ss\""
# Thu 21:46
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE HH:mm\""
# defaults delete com.apple.menuextra.clock "DateFormat"

# ----- Settings ---------------------------------------------------------------
# Always show scrollbars
defaults write NSGlobalDomain "AppleShowScrollBars" -string "Always"
# defaults delete NSGlobalDomain "AppleShowScrollBars"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Speed up Mission Control animations
defaults write com.apple.dock "expose-animation-duration" -float 0.1
# defaults delete com.apple.dock "expose-animation-duration"

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock "mru-spaces" -bool "false"
# defaults delete com.apple.dock "mru-spaces"

## Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

# Top left screen corner →
defaults write com.apple.dock "wvous-tl-corner" -int 0
defaults write com.apple.dock "wvous-tl-modifier" -int 0

# Top right screen corner →
defaults write com.apple.dock "wvous-tr-corner" -int 0
defaults write com.apple.dock "wvous-tr-modifier" -int 0

# Bottom left screen corner → Launchpad
defaults write com.apple.dock "wvous-bl-corner" -int 11
defaults write com.apple.dock "wvous-bl-modifier" -int 0

# Bottom right screen corner → Mission Control
defaults write com.apple.dock "wvous-br-corner" -int 2
defaults write com.apple.dock "wvous-br-modifier" -int 0

# ----- Keyboard ---------------------------------------------------------------
# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain "AppleKeyboardUIMode" -int 3
# defaults delete NSGlobalDomain "AppleKeyboardUIMode"

# Enable Use F1, F2, etc. keys as standard function keys
defaults write NSGlobalDomain "com.apple.keyboard.fnState" -bool "true"

# Disable Correct spelling automatically
defaults write NSGlobalDomain "NSAutomaticSpellingCorrectionEnabled" -bool "false"

# Disable Capitalize words automatically
defaults write NSGlobalDomain "NSAutomaticCapitalizationEnabled" -bool "false"

# Disable Add period with double-space
defaults write NSGlobalDomain "NSAutomaticPeriodSubstitutionEnabled" -bool "false"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain "KeyRepeat" -int 2
# defaults delete NSGlobalDomain "KeyRepeat"

defaults write NSGlobalDomain "InitialKeyRepeat" -int 15
# defaults delete NSGlobalDomain "InitialKeyRepeat"

# Set mouse tracking speed max
defaults write -g com.apple.mouse.scaling 3
defaults write -g com.apple.mouse.scaling 5

# Disable Apple Press and Hold
defaults write -g "ApplePressAndHoldEnabled" -bool "false"

# Disabl e autocorrect, capitalization, period etc globally (all apps)
defaults write -g "WebAutomaticSpellingCorrectionEnabled" -bool "false"
defaults write -g "NSAutomaticSpellingCorrectionEnabled" -bool "false"
defaults write -g "NSAutomaticCapitalizationEnabled" -bool "false"
defaults write -g "NSAutomaticPeriodSubstitutionEnabled" -bool "false"
defaults write -g "NSSpellCheckerAutomaticallyIdentifiesLanguages" -bool "true"
defaults write -g "NSQuitAlwaysKeepsWindows" -bool "true"

# Disable Show Input menu in menu bar
defaults write com.apple.TextInputMenu "visible" -bool "false"

# Disable Shortcuts Input Sources and Spotlight
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>32</integer><integer>49</integer><integer>262144</integer></array><key>type</key><string>standard</string></dict></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 61 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>32</integer><integer>49</integer><integer>786432</integer></array><key>type</key><string>standard</string></dict></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>49</integer><integer>1048576</integer></array><key>type</key><string>standard</string></dict></dict>"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 65 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>49</integer><integer>1572864</integer></array><key>type</key><string>standard</string></dict></dict>"

# Ask the system to read the hotkey plist file and ignore the output. Likely updates an in-memory cache with the new plist values.
defaults read com.apple.symbolichotkeys.plist >/dev/null

# Run reactivateSettings to apply the updated settings.
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

for app in "Finder" "Dock" "TextEdit" "SystemUIServer"; do
    killall "$app" >/dev/null 2>&1
done

echo "Done. Note that some of these changes require a logout/restart to take effect."
