#!/bin/bash

rsync --progress /root/kmgmanager/* /tmp/kmgmanager/ --exclude '.git*'
tar -zcvf kmgmanager.tar.gz /tmp/kmgmanager -C /root/
echo "The tar.gz was created on /root/kmgmanager.tar.gz!"
