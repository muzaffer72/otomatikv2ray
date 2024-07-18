echo -e "\e[40;38;5;82mTarih saat guncelleme islemi basliyor...\e[0m";
sudo timedatectl set-timezone Europe/Istanbul
sudo apt-get install chrony -y 
systemctl enable chrony
sed -i '/server /d' /etc/chrony/chrony.conf
echo -e '\nserver ntp.domainhizmetleri.com minpoll 2 maxpoll 9\nserver ntp1.ulak.net.tr minpoll 2 maxpoll 9\nserver europe.pool.ntp.org minpoll 2 maxpoll 9' >> /etc/chrony/chrony.conf
systemctl restart chrony
/sbin/hwclock --systohc 
chronyc tracking
sleep 3
chronyc sources
echo -e "\e[40;38;5;82mTarih saat guncelleme islemi tamamlandi. @ Domainhizmetleri.com Destek Ekibi...\e[0m";
date
