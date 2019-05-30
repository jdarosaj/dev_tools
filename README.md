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
