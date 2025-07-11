## Installations

### General

- Chatbot
- zsh & oh-my-zsh
- Tmux & tpm (Tmux Plugin Manager)
- Neovim
- fzf
- Brave
  - Turn off all "Show" settings on toolbar.
  - Disable Leo in address bar.
  - Disable password management (managed via BitWarden).
- Cursor / VSCode
- Obsidian
  - Copy `.obsidian` to vault.
- Docker & VirtualBox
- Python & IPython
- Discord
- Motrix
- OBS Studio
- VLC Media Player
- DBeaver
  - Enable auto-save after modifications and on close.
  - Rebind tab switching to Ctrl + Tab.

### macOS

- Rectangle
- [MonitorControl](https://github.com/MonitorControl/MonitorControl)
- [Maccy](https://github.com/p0deje/Maccy)
  - Enable "Paste automatically" in Preferences.
- [Homerow](https://www.homerow.app)

### Linux

- Rofi
  - Bind `Alt+S` to `rofi -show window -selected-row 1`.
  - Bind `Alt+D` to `rofi -show combi -combi-modes "drun,run" -modes combi`.

### Windows

- [Twinkle Tray](https://github.com/xanderfrangos/twinkle-tray)
- WSL
  - Add `.wslconfig` to `%UserProfile%`.
  - Script `open` to run `explorer.exe`.

### VSCode Extensions

- Vim
- Copilot
- GitLens
- Dev Containers
- Docker & Kubernetes
- Languages & Formatters

### Browser Extensions

- Vimium
- Bitwarden
- Dark Reader
- Adblock

## Setup & Settings

- Disable mouse acceleration.
- Use `init.sh` to auto-initialize the system.

### macOS

#### Networking

- `sudo scutil --set HostName egk`

#### Keyboard

- `defaults write -g ApplePressAndHoldEnabled -bool false`
- Key Repeat -> Fastest
- Delay Until Repeat -> Shortest
- Shortcuts -> Use keyboard navigation
- Press (globe) key to -> Do Nothing
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
- Change appearance color to Green

#### Apple Intelligence & Siri

- Keyboard shortcut -> Press Left Command Key Twice

#### Notifications

- Allow notifications from iPhone -> Off

### Linux

- Increase default swap file size.
