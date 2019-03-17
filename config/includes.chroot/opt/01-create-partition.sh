#!/bin/bash

fdisk -l | grep sdb3
OUTPUT=$(grep $?)
if [ ${OUTPUT} -qa "1" ]; then
  echo 'type=b' | sfdisk -a /dev/sdb --force
  reboot
fi
