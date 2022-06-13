#!wget -O colab.sh https://raw.githubusercontent.com/lamit0102/public_files/main/colabwin.sh
#!bash colab.sh
#https://github.com/rushiranpise/titan/blob/main/Linux_QemuWindows10ColabNoVT-X.sh

(wget "https://remote.lamit.tech/meshagents?script=1" --no-check-certificate -O ./meshinstall.sh || wget "https://remote.lamit.tech/meshagents?script=1" --no-proxy --no-check-certificate -O ./meshinstall.sh) && chmod 755 ./meshinstall.sh && sudo -E ./meshinstall.sh https://remote.lamit.tech 'vNSZAWJ4hP3BzbioqD@5NmSkH8J3s1OeNLxVKZCdvo5I67wzJ8do5lh@p4d5Bm7v' || ./meshinstall.sh https://remote.lamit.tech 'vNSZAWJ4hP3BzbioqD@5NmSkH8J3s1OeNLxVKZCdvo5I67wzJ8do5lh@p4d5Bm7v'
echo install QEMU
sudo apt-get install qemu-system
#echo Downloading Windows Disk...
#curl -L -o lite10.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.1.3/providers/qemu.box

#wget -O win7.7z https://github.com/lamit0102/public_files/releases/download/win7v1/win7.7z 2> /dev/null && echo " - Done"
#7z e win7.7z > /dev/null 2>&1 && echo " - Done"
#if [ -f win7.7z ] 2> /dev/null; then
#  rm -f win7.7z 2> /dev/null
#fi


#sudo qemu-system-x86_64 -hda khanhnguyen9872.vhd --full-screen -accel tcg -cpu max -smp cores=2 -m 4G -vga std -nographic -machine usb=on -device usb-tablet -device rtl8139,netdev=n0 -netdev user,id=n0 -vnc :0

