#!/bin/bash
gparted ${USBSTICK}
mkdosfs -F 32 -I ${PARTITION}
mkdir /mnt/windows/
mount ${PARTITION} /mnt/windows/
ln -s /mnt/windows /home/labuser/windows
sudo chown -R labuser.labuser /home/labuser
sudo chown -R labuser.labuser /mnt/windows/
