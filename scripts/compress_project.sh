#!/bin/bash


rm -rf /tmp/kmgmanager/
rsync -av --progress /root/kmgmanager/* /tmp/kmgmanager/ --exclude '.git*' --exclude '*img'
cd /tmp/
tar -zcvf /root/kmgmanager.tar.gz ./kmgmanager/
echo "The tar.gz was created on /root/kmgmanager.tar.gz!"

rm -rf /tmp/kmgmanager/
