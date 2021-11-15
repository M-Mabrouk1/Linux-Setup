---
title: "Linux Setup"
tags: ""
---

# Linux setup

## Application installation

### 1. Update and Upgrade and Remove bloatware
```
sudo apt update
sudo apt full-upgrade
sudo apt purge ....
```
### 2. Install 3rd party codecs
```
sudo apt-get install ubuntu-restricted-extras
```
### 3. Setup hybrid graphics
```
sudo system76-power graphics hybrid
sudo reboot now
```
### 4. Install piper for mouse control
```
sudo apt install piper
```
### 5. Install extreme cooling for fan managing

### [Extreme cooling download page](https://odintdh.itch.io/extremecooling4linux)

### 6. Install neofetch and htop
```
sudo apt install neofetch
sudo apt install htop
```
### 7. Enable TRIM for SSD drives (for extending life)
```
sudo systemctl enable fstrim.timer
```
### 8. Install express vpn

### 9. Install snap for snap app installation
```
sudo apt install snapd
```
### 10. Install Rest of apps from terminal or shop
![Screenshot from 2021-11-03 17-52-59.png](data/apps_1.png)
![Screenshot from 2021-11-03 17-53-09.png](data/apps_2.png)


### 11. Install Gnome tweaks
```
sudo apt install gnome-tweak-tool
```
### 9. Install Gnome extensions
### [Gnome extensions](https://extensions.gnome.org)
![Screenshot from 2021-11-03 17-44-36.png](https://boostnote.io/api/teams/B7zGnc-ns/files/39e1b43e8464c7e5e7e49534a44875c4d59c4c52e3ba61d0623af205da0f078e-Screenshot%20from%202021-11-03%2017-44-36.png)
![Screenshot from 2021-11-03 17-44-52.png](https://boostnote.io/api/teams/B7zGnc-ns/files/80d617414af04f0c1f0a59a7b52f7b4d6e40bfe421acfef234e60bcf12a72445-Screenshot%20from%202021-11-03%2017-44-52.png)


| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   <br> 7amada |
| Paragraph   | Text        | And more      |