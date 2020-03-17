# Dev tools
Dev tools that I have to download in every computer that I use to work

## Useful alias commands

Prints line number, context and colorize grep results:

`alias grep-pattern='grep --line-number -R --color --after-context=3 --before-context=1'`

Then use is as: `grep-pattern <pattern> <file(s)>`
  

Colorize grep results:

`alias grep='grep --color=auto'`


Colorize ls command result:

`alias ls='ls -lah --color=auto'`


## pycharm and webstorm cursor focus problem

Adding `suppress.focus.stealing=false` to `Help | Edit Custom Properties` fixes the missing cursor issue when re-focusing under the i3 tiling windows manager.

## Configuring hotkeys on keyboard

Increase volume:
`pactl -- set-sink-volume 0 +10%`

Decrease volume:
`pactl -- set-sink-volume 0 -10%`

Mute sound:
`pactl set-sink-mute 0 toggle`

Play/Pause toggle (spotify):
`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause`

Next music (spotify):
`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next`

Previous Music (spotify):
`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous`


## Git keeps asking passphrase when pushing ou pulling repository

Add in file `~/.ssh/config` the following content:
```
Host *
   IgnoreUnknown AddKeysToAgent,UseKeychain
   AddKeysToAgent yes
   UseKeychain yes
   IdentityFile ~/.ssh/id_rsa
```

## Debian volume problems

`https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/`


## To install

`apt install -y net-tools nodejs npm htop build-essential python3-dev python-dev apt-transport-https ca-certificates curl ssh git i3 virtualbox tcpdump lsof cifs-utils smbclient zsh tmux`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

