# linux-lab
debian live cd created with live-build


All you need to do is to install the latest debian9 (stretch).
install live-build by running

    apt-get install live-build
    
clone the repo with:

    git clone https://github.com/zozo6015/linux-lab.git
    
run a configuration command. For example:

    cd linux-lab
    lb config --bootappend-live "boot=live compoments hostname=live-lab username=labuser" -a amd64 --apt-options "--force-yes --yes" --debconf-frontend dialog --debian-installer false --apt-recommends false --security true --memtest false 

Then run:

    lb build
  
After a little while you will get the iso image into the project folder. 

