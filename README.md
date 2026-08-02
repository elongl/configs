## Installations

### General

- Terminal
  - zsh & oh-my-zsh
  - Tmux & tpm (Tmux Plugin Manager)
  - Neovim
  - fzf
- Brave
- VSCode
- Obsidian
- Docker
- Python & IPython
- Discord
- Motrix
- OBS Studio
- Screen Studio
- Google Drive App

### macOS

- Rectangle
- [MonitorControl](https://github.com/MonitorControl/MonitorControl)
- Raycast

### Linux

- Rofi

### Windows

- [PowerToys](https://github.com/microsoft/PowerToys)
- [Twinkle Tray](https://github.com/xanderfrangos/twinkle-tray)
- WSL

### VSCode Extensions

- Vim
- GitLens

### Browser Extensions

- Vimium
- Bitwarden
- Dark Reader
- Adblock
- Obsidian Web Clipper

### Brave PWAs

- Gemini
- Excalidraw

## Setup & Settings

- Disable mouse acceleration.
- Use `init.sh` to auto-initialize the system.

### Applications

#### Brave

- Turn off all "Show" settings on toolbar.
- Disable Leo in address bar.
- Disable password management (managed via BitWarden).
- Set `chrome://flags/#enable-webrtc-allow-input-volume-adjustment` to `Disabled`.

#### Gmail

- Mark a conversation as read: Never.

#### MonitorControl

- Enable "Paste automatically" in Preferences.

#### Obsidian

- Copy `.obsidian` to vault.

#### PowerToys

- Turn off everything except _PowerToys Run_.

#### Raycast

- Disable all defaults; keep only Applications and Clipboard History.

#### Rofi

- Bind `Alt+S` to `rofi -show window -selected-row 1`.
- Bind `Alt+D` to `rofi -show combi -combi-modes "drun,run" -modes combi`.

#### WSL

- Add `.wslconfig` to `%UserProfile%`.

### macOS

#### Networking

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

#### Sound

- Alert volume -> 0%

#### Terminal

- Profiles -> Keyboard -> Use option as meta key
- Opacity -> 75%, Blur -> 25%
- Font size 14
- Give "Full disk access"

#### Desktop & Dock

- Disable bouncing animation: `defaults write com.apple.dock no-bouncing -bool TRUE && killall Dock`
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

### Linux

- Increase default swap file size

### Windows

- System -> Multitasking -> Uncheck "When I snap a window, suggest what I can snap next to it"
