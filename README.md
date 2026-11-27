## Installations

### General

- Agents (Claude, Codex, etc.)
- Terminal
  - zsh & oh-my-zsh
  - Tmux & tpm (Tmux Plugin Manager)
  - Neovim
  - fzf
- Brave
- Obsidian
- Discord
- OBS Studio

### macOS

- Rectangle
- [MonitorControl](https://github.com/MonitorControl/MonitorControl)
- Raycast

### Browser Extensions

- Vimium
- Bitwarden
- Dark Reader

## Setup & Settings

- Disable mouse acceleration.

### Applications

#### Brave

- Turn off all "Show" settings on toolbar.
- Disable Leo in address bar.
- Disable password management (managed via BitWarden).
- Set `chrome://flags/#enable-webrtc-allow-input-volume-adjustment` to `Disabled`.

#### Gmail

- Mark a conversation as read: Never.

#### Obsidian

- Copy `.obsidian` to vault.

#### Raycast

- Disable all defaults; keep only Applications and Clipboard History.

### macOS

#### Networking

- `sudo scutil --set ComputerName egk`
- `sudo scutil --set LocalHostName egk`
- `sudo scutil --set HostName egk`

#### Keyboard

- `defaults write -g ApplePressAndHoldEnabled -bool false`
- Key Repeat -> Fastest
- Delay Until Repeat -> Shortest
- Shortcuts -> Use keyboard navigation
- Shortcuts -> Modifier Keys -> Caps Lock -> No Action
- Dictation shortcut -> Press Control Key Twice
- Shortcuts -> Mission Control - Do Not Disturb -> ⌃⌥⌘D

#### Mouse & Trackpad

- Disable natural scrolling
- Trackpad -> Click -> Light

#### Terminal

- Profiles -> Keyboard -> Use option as meta key
- Opacity -> 75%, Blur -> 25%
- Font size 14
- Give "Full disk access"

#### Desktop & Dock

- Disable bouncing animation: `defaults write com.apple.dock no-bouncing -bool TRUE && killall Dock`
- Show the ⌘Tab app switcher on the Dock’s display instead of the focused display (macOS 27): `defaults write com.apple.dock appswitcher-dock-display -bool true && killall Dock`
- Automatically hide and show the Dock
- Menu bar
  - Bluetooth
  - Screen Mirroring
  - Sound
- Don't show recent applications
- Focus
  - Share across devices -> Off

#### Displays

- Disable True Tone
- Disable automatic brightness adjustment
- Change appearance color to Green

#### Apple Intelligence & Siri

- Keyboard shortcut -> Press Left Command Key Twice

#### Notifications

- Allow notifications from iPhone -> Off
