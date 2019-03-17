#!/bin/bash

fdisk -l | grep sdb
DISK_EXIST=$(echo $?)

if [ ${DISK_EXIST} -eq 0 ]; then
  fdisk -l | grep sdb3
  OUTPUT=$(grep $?)
  if [ ${OUTPUT} -qa "1" ]; then
    echo 'type=b' | sfdisk -a /dev/sdb --force
    reboot
  fi
fi
