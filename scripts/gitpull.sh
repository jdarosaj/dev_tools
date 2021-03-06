#!/bin/bash

#eval `ssh-agent` # use only if this is not in ~/.bashrc script
keys_added=`ssh-add -L | grep "ssh-rsa"`
cur_path=`echo $PWD`

cd $cur_path
if [ "x$keys_added" = "x" ]; then
    ssh-add
fi

git stash save
sleep 1
git pull
sleep 1
git stash pop

exit 0
