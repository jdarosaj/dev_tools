# Documentation for my workflow and tools
Useful tools that I use on my my env and also softwares to install in every computer that I use for development
## VS Code config
- For Mac key bindings use the file `configs_ide/vs_code_mac_key_bindings.json`
- For Mac config use the file `configs_ide/vs_code_mac_settings.json`

## VS Code Extensions

- Auto Rename tag - https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag
- Auto close tag - https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag
- Color highlight - https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight
- Eslint - https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
- Figma for VS code - https://marketplace.visualstudio.com/items?itemName=figma.figma-vscode-extension
- Git Lens - https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
- Indent rainbow - https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow
- JS JSX snippets - https://marketplace.visualstudio.com/items?itemName=skyran.js-jsx-snippets
- Material icon theme - https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme
- Prettier eslint - https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint
- Run on save - https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave
- Jest - https://marketplace.visualstudio.com/items?itemName=Orta.vscode-jest

## Useful tools

https://www.dbdesigner.net/ - Relational databases modelage\
https://trello.com/ - Tasks organization in boards


## Useful alias commands

Prints line number, context and colorize grep results:

`alias grep-pattern='grep --line-number -R --color --after-context=3 --before-context=1'`

Then use is as: `grep-pattern <pattern> <file(s)>`

Colorize grep results:

`alias grep='grep --color=auto'`


Colorize ls command result:

`alias ls='ls -lah --color=auto'`


## Useful commands

`export $(grep -v '^#' .env | xargs)` - export all variables from .env file to terminal

`ssh-keygen -t rsa -C "your_email@example.com"` - generate a new ssh key pair

`usermod -a -G sudo username` - Adding user to sudo group

`echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p` - Increase watchers in debian - Error in expo-cli (ENOSPC: System limit for number of file watchers reached)

## Really cool tutorials repo
generate unique ids JS easily - https://gist.github.com/gordonbrander/2230317

https://github.com/danistefanovic/build-your-own-x


----------------------

## pycharm and webstorm cursor focus problem

Adding `suppress.focus.stealing=false` and `suppress.focus.stealing.disable.auto.request.focus=false` to `Help | Edit Custom Properties` fixes the missing cursor issue when re-focusing under the i3 tiling windows manager.

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
   ServerAliveInterval 240
```
## Set vim as default editor
`sudo update-alternatives --config editor`
(3 vim.basic)


## Debian volume problems

`https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/`


## To install

`apt install -y net-tools nodejs npm htop build-essential python3-dev python-dev apt-transport-https ca-certificates curl ssh git i3 virtualbox tcpdump lsof cifs-utils smbclient zsh tmux psmisc`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`


### Docker Install

```bash
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io
```

#### Post Installation Docker

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
docker run hello-world
sudo systemctl enable docker
```

##### Change or create file `/etc/docker/daemon.json`

```
{
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "3"
  }
}
```
and after execute `sudo systemctl restart docker`


### Docker-compose install

```
sudo curl -L --fail https://github.com/docker/compose/releases/latest/download/run.sh -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
