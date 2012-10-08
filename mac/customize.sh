#!/bin/sh

COMPUTERNAME='vhyza'
LOCALHOSTNAME='vhyza'

function set_system_preferences () {
# System Preferences

  ## System Preferences > General

    # Set computer name (as done via System Preferences → Sharing)
    sudo scutil --set ComputerName $COMPUTERNAME
    sudo scutil --set HostName $LOCALHOSTNAME
    sudo scutil --set LocalHostName $LOCALHOSTNAME
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $LOCALHOSTNAME

    ### Appearance: Graphite
    /usr/bin/defaults write -g 'AppleAquaColorVariant' -int 6

    ### Highlight color: #CC99CC
    ### /usr/bin/defaults write -g 'AppleHighlightColor' -string '0.600000 0.800000 0.600000'

    ### Sidebar icon size: Small
    /usr/bin/defaults write -g 'NSTableViewDefaultSizeMode' -int 1

    # <http://twitter.com/siracusa/statuses/95240123494572032>
    /usr/bin/defaults write -g 'NSAutomaticWindowAnimationsEnabled' -bool false

    ### Restore windows when quitting and re-opening apps: off
    /usr/bin/defaults write -g 'NSQuitAlwaysKeepsWindows' -bool false


  ## System Preferences > Desktop & Screen Saver > Desktop

    ### Translucent menu bar: off
    /usr/bin/defaults write -g 'AppleEnableMenuBarTransparency' -bool false

  ## System Preferences > Desktop & Screen Saver > Screen Saver

    ### Hot Corners… > Top Left: ⌘ Mission Control
    /usr/bin/defaults write com.apple.dock 'wvous-tl-corner' -int 2
    /usr/bin/defaults write com.apple.dock 'wvous-tl-modifier' -int 0

    ### Hot Corners… > Bottom Left: Put Display to Sleep
    /usr/bin/defaults write com.apple.dock 'wvous-bl-corner' -int 5
    /usr/bin/defaults write com.apple.dock 'wvous-bl-modifier' -int 0

    # Speed up Mission Control animations
    defaults write com.apple.dock expose-animation-duration -float 0.1

    # Bottom left screen corner → Expose
    defaults write com.apple.dock 'wvous-br-corner' -int 3
    defaults write com.apple.dock 'wvous-br-modifier' -int 0

  ## System Preferences > Dock

    ### Size: 32 pixels
    /usr/bin/defaults write com.apple.dock 'tilesize' -int 32

    ### Magnification: off, 64 pixels
    /usr/bin/defaults write com.apple.dock 'magnification' -bool false
    /usr/bin/defaults write com.apple.dock 'largesize' -int 64

    ### Position on screen: Left
    /usr/bin/defaults write com.apple.dock 'orientation' -string 'right'

    ### Minimize windows using: Scale effect
    /usr/bin/defaults write com.apple.dock 'mineffect' -string 'scale'

    ### Autohide
    /usr/bin/defaults write com.apple.dock autohide -bool true


  ## System Preferences > Mission Control

    ### Show Dashboard as a space
    /usr/bin/defaults write com.apple.dock 'dashboard-in-overlay' -bool true


  ## System Preferences > Security & Privacy > General

    ### Require password: '5 seconds' after sleep or screen saver begins
    /usr/bin/defaults write com.apple.screensaver 'askForPassword' -int 1
    /usr/bin/defaults write com.apple.screensaver 'askForPasswordDelay' -int 5


  ## System Preferences > Universal Access > Seeing

    ### Zoom: Options… > Use scroll wheel with modifier keys to zoom: on
    /usr/bin/defaults write com.apple.universalaccess 'closeViewScrollWheelToggle' -bool true
    ### Zoom: Options… > Use scroll wheel with modifier keys to zoom: ^ [control]
    /usr/bin/defaults write com.apple.universalaccess 'HIDScrollZoomModifierMask' -int 262144

  ## System Preferences > Energy Saver > Battery

    ### Computer sleep: Never
    /usr/bin/sudo /usr/bin/pmset -b sleep 0

    ### Display sleep: 10 min
    /usr/bin/sudo /usr/bin/pmset -b displaysleep 10

    ### Put the hard disk(s) to sleep when possible: 10 min
    /usr/bin/sudo /usr/bin/pmset -b disksleep 10

    ### Slightly dim the display when using this power source
    /usr/bin/sudo /usr/bin/pmset -b lessbright 1

    ### Automatically reduce brightness before display goes to sleep
    /usr/bin/sudo /usr/bin/pmset -b halfdim 1

    ### Restart automatically if the computer freezes
    /usr/bin/sudo /usr/bin/pmset -b panicrestart 15

  ## System Preferences > Energy Saver > Power Adapter

    ### Computer sleep: Never
    /usr/bin/sudo /usr/bin/pmset -c sleep 0

    ### Display sleep: 10 min
    /usr/bin/sudo /usr/bin/pmset -c displaysleep 10

    ### Put the hard disk(s) to sleep when possible: 10 min
    /usr/bin/sudo /usr/bin/pmset -c disksleep 10

    ### Wake for network access
    /usr/bin/sudo /usr/bin/pmset -c womp 1

    ### Automatically reduce brightness before display goes to sleep
    /usr/bin/sudo /usr/bin/pmset -c halfdim 0

    ### Start up automatically after a power failure
    /usr/bin/sudo /usr/bin/pmset -c autorestart 1

    ### Restart automatically if the computer freezes
    /usr/bin/sudo /usr/bin/pmset -c panicrestart 15


  ## System Preferences > Keyboard > Keyboard

    ### Automatically illuminate keyboard in low light: on
    /usr/bin/defaults write com.apple.BezelServices 'kDim' -bool true

    ### Turn off when computer is not used for: 5 mins
    /usr/bin/defaults write com.apple.BezelServices 'kDimTime' -int 300

    # Use scroll gesture with the Ctrl (^) modifier key to zoom
    /usr/bin/defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
    /usr/bin/defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
    # Follow the keyboard focus while zoomed in
    /usr/bin/defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

    # Disable press-and-hold for keys in favor of key repeat
    /usr/bin/defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

    # Set a blazingly fast keyboard repeat rate
    /usr/bin/defaults write NSGlobalDomain KeyRepeat -int 4
    /usr/bin/defaults write NSGlobalDomain InitialKeyRepeat -int 4

    # Disable auto-correct
    /usr/bin/defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


  ## System Preferences > Mouse

    ### Move content in the direction of finger movement when scrolling or navigating: off
    /usr/bin/defaults write -g 'com.apple.swipescrolldirection' -bool false


  ## System Preferences > Trackpad

    ### Active Tab: Point & Click
    /usr/bin/defaults write com.apple.systempreferences 'trackpad.lastselectedtab' -int 0

    # Trackpad: swipe between pages with three fingers
    /usr/bin/defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
    /usr/bin/defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
    /usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

  ## System Preferences > Trackpad > Point & Click

    # Trackpad: enable tap to click for this user and for the login screen
    /usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    /usr/bin/defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    /usr/bin/defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

  ## System Preferences > Trackpad > Scroll & Zoom

    ### Scroll direction: natural: no
    /usr/bin/defaults write -g 'com.apple.swipescrolldirection' -bool false

  ## System Preferences > Trackpad > More Gestures

    ### Launchpad: no
    /usr/bin/defaults write com.apple.dock 'showLaunchpadGestureEnabled' -bool true

    ### Show Desktop: no
    /usr/bin/defaults write com.apple.dock 'showDesktopGestureEnabled' -bool true

  ## System Preferences > Sound

    ### Play user interface sound effects
    /usr/bin/defaults write com.apple.systemsound 'com.apple.sound.uiaudio.enabled' -int 0

    ### FIXME: Play feedback when volume is changed
    /usr/bin/defaults write -g 'com.apple.sound.beep.feedback' -bool false



  ## System Preferences > Users & Groups

    ### Login Options > Display login window as: Name and password
    # /usr/bin/sudo /usr/bin/defaults write /Library/Preferences/com.apple.loginwindow 'SHOWFULLNAME' -bool true


  ## System Preferences > Date & Time > Clock

    ### Show date and time in menu bar: no
    /usr/bin/defaults -currentHost write com.apple.systemuiserver 'dontAutoLoad' -array-add '/System/Library/CoreServices/Menu Extras/Clock.menu'

    ### Time options: Display the time with seconds: on
    ### Date options: Show the day of the week: on
    ### Date options: Show date: on
    /usr/bin/defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE MMM d   h:mm:ss a'


  ## System Preferences > Software Update > Scheduled Check

    ### Download updates automatically: off
    /usr/bin/sudo /usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate 'AutomaticDownload' -bool false

}

function set_application_preferences () {

  ## System / Library / CoreServices / Finder

  /usr/bin/defaults write com.apple.finder 'PreferencesWindow.LastSelection' -string 'SDBR'

  /usr/bin/defaults write com.apple.finder 'NewWindowTarget' -string 'PfHm'

  /usr/bin/defaults write com.apple.finder 'ShowStatusBar' -bool true

  /usr/bin/defaults write com.apple.finder 'WarnOnEmptyTrash' -bool false
  /usr/bin/defaults write com.apple.finder 'FXEnableExtensionChangeWarning' -bool false

  /usr/bin/defaults write com.apple.finder 'FinderSounds' -bool false

  /usr/bin/defaults write com.apple.finder 'AnimateInfoPanes' -bool false
  /usr/bin/defaults write com.apple.finder 'AnimateWindowZoom' -bool false
  /usr/bin/defaults write com.apple.finder 'DisableAllAnimations' -bool true

  /usr/bin/defaults write com.apple.desktopservices 'DSDontWriteNetworkStores' -bool true

  /usr/bin/defaults write com.apple.finder 'FXPreferredGroupBy' -string 'Date Added'

  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool'
  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool true'

  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:useRelativeDates" bool'
  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:useRelativeDates" bool false'

  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:calculateAllSizes" bool'
  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:calculateAllSizes" bool true'

  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:useRelativeDates" bool'
  /usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:useRelativeDates" bool false'

  # Make ~/Library visible
  /usr/bin/chflags nohidden $HOME/Library

  # [!] Reload Finder
  /usr/bin/sudo /usr/bin/killall Finder

  # Disable "... is an application downloaded from the internet. Are you sure you want to open it?"
  defaults write com.apple.LaunchServices LSQuarantine -bool NO

  ## Applications / iTunes

  /usr/bin/defaults write com.apple.iTunes 'disablePing' -bool true
  /usr/bin/defaults write com.apple.iTunes 'hide-ping-dropdown' -bool true

  /usr/bin/defaults write com.apple.iTunes 'show-store-link-arrows' -bool true
  /usr/bin/defaults write com.apple.iTunes 'invertStoreLinks' -bool true


  ## Applications / iWork

  /usr/bin/defaults write com.apple.iWork.Keynote 'ShowStartingPointsForNewDocument' -bool false
  /usr/bin/defaults write com.apple.iWork.Keynote 'dontShowWhatsNew' -bool true
  /usr/bin/defaults write com.apple.iWork.Keynote 'FirstRunFlag' -bool true

  /usr/bin/defaults write com.apple.iWork.Numbers 'ShowStartingPointsForNewDocument' -bool false
  /usr/bin/defaults write com.apple.iWork.Numbers 'dontShowWhatsNew' -bool true
  /usr/bin/defaults write com.apple.iWork.Numbers 'FirstRunFlag' -bool true

  /usr/bin/defaults write com.apple.iWork.Pages 'ShowStartingPointsForNewDocument' -bool false
  /usr/bin/defaults write com.apple.iWork.Pages 'dontShowWhatsNew' -bool true
  /usr/bin/defaults write com.apple.iWork.Pages 'FirstRunFlag' -bool true


  ## Applications / Mail

  /usr/bin/defaults write com.apple.mail 'PreferPlainText' -bool true
  /usr/bin/defaults write com.apple.mail 'DisableReplyAnimations' -bool true
  /usr/bin/defaults write com.apple.mail 'DisableSendAnimations' -bool true


  ## Applications / QuickTime Player

  /usr/bin/defaults write com.apple.QuickTimePlayerX 'MGCinematicWindowDebugForceNoRoundedCorners' -bool true


  ## Applications / Safari

  /usr/bin/defaults write com.apple.Safari 'ShowStatusBar' -bool true

  ### Applications / Safari > General

  /usr/bin/defaults write com.apple.Safari 'NewWindowBehavior' -int 1
  /usr/bin/defaults write com.apple.Safari 'NewTabBehavior' -int 1
  /usr/bin/defaults write com.apple.Safari 'HomePage' -string ''
  /usr/bin/defaults write com.apple.Safari 'AutoOpenSafeDownloads' -bool false

  /usr/bin/defaults write com.apple.LaunchServices 'LSQuarantine' -bool false

  /usr/bin/defaults write com.apple.Safari 'LastDisplayedWelcomePageVersionString' -string 4.0

  /usr/bin/defaults write com.apple.Safari 'DidAddReadingListToBookmarksBar' -bool true
  /usr/bin/defaults write com.apple.Safari 'DidMigrateNewBookmarkSheetToReadingListDefault' -bool true

  /usr/bin/defaults write com.apple.Safari 'ConvertedNewWindowBehaviorForTopSites' -bool true
  /usr/bin/defaults write com.apple.Safari 'BookmarksToolbarProxiesWereConvertedForSafari4' -bool true

  ### Applications / Safari > Advanced

  /usr/bin/defaults write com.apple.Safari 'IncludeDevelopMenu' -bool true

  ## Utilities / Disk Utility

  /usr/bin/defaults write com.apple.DiskUtility 'DUDebugMenuEnabled' -bool true


}

echo "  → Customizing the OS..."
set_system_preferences
echo "  → Customizing applications..."
set_application_preferences
echo "  → Customizing iterm2..."

if [ ! -d "$HOME/Fonts/Meslo LG DZ v1.0" ]; then
  echo "  → Installing the Meslo typeface..."
  curl -# -o /tmp/Meslo.zip -L -k http://github.com/downloads/andreberg/Meslo-Font/Meslo%20LG%20DZ%20v1.0.zip
  open -W /tmp/Meslo.zip
  cp -r "/tmp/Meslo LG DZ v1.0" $HOME/Fonts
  echo "[!] Please install font..."
  open -W $HOME/Fonts/MesloLGS-DZ-Regular.ttf
fi

cp ./iterm/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist

for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" \
  "Mail" "Safari" "SizeUp" "SystemUIServer" "iTunes"; do
  killall "$app" > /dev/null 2>&1
done

echo "✓ System and Application Preferences were set, restart iTerm2..."
