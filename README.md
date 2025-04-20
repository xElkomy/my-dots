# my-dots
This repo is just a temp for my personal dotfiles, with Hyde Dots on arch linux.


## Add DEFAULT APP
Like add Dolphin As defualt directory luncher
```bash
xdg-mime default org.kde.dolphin.desktop inode/directory
```


## For passwords and passkeys related things:
```
sudo pacman -S gnome-keyring
```

## Create an automount for my second hardisk
```
sudo mkdir -p /media/xelkomy/Data
sudo nano /etc/fstab
UUID=CHANGETHISWITHYOURS /media/xelkomy/Data ntfs-3g defaults,nofail,uid=1000,gid=1000 0 0
sudo systemctl daemon-reload
sudo mount -a
```
