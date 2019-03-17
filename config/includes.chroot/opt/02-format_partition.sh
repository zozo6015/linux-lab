#!/bin/bash

fdisk -l | grep sdb3
RESULT=$(echo $?)

if [ ! -d /mnt/windows]; then
       mkdir /mnt/windows
fi       

if [ ${RESULT} -eq 0 ]; then
	mount /dev/sdb3 /mnt/windows -o uid=1000,gid=1000
	MOUNT_RESULT=$(echo $?)
	if [ ${MOUNT_RESULT} -ne 0 ]; then
	  mkdosfs -F 32 -I /dev/sdb3
	  mount /dev/sdb3 /mnt/windows -o uid=1000,gid=1000
	fi
fi

chown -R 1000.1000 /home/student
