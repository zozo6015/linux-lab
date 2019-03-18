# linux-lab
debian live cd created with live-build


All you need to do is to install the latest debian9 (stretch).
install live-build by running

    apt-get install live-build
    
clone the repo with:

    git clone https://github.com/zozo6015/linux-lab.git
    
run a configuration command. For example:

    cd linux-lab
    lb config

Then run:

    lb build
  
After a little while you will get the iso image into the project folder. 

Note: The system is built with xcfe4 destop system. If you want to change it to something else you need to edit
the following file: `config/packege-list/desktop.list.chroot` 

for gnome use `task-gnome-desktop`

for kde use `task-kde-desktop`

if you want localized kde then you can use for example for german `task-german-kde-desktop`

The image will create a windows partition on the USB drive if the image is written on a drive. The windows partition will be mounted into /mnt/windows and symlinked to /home/student/windows which can be used as a persistent data store.

The windows cannot see this partition since windows OS cannot read other than the first partition of the USB drives.
