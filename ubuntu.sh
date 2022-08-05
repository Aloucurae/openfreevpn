#!/bin/bash

clear
echo "     _   _ ____  _   _ _   _ _____ _   _     "
echo "    | | | | __ )| | | | \ | |_   _| | | |    "
echo "    | | | |  _ \| | | |  \| | | | | | | |    "
echo "    | |_| | |_) | |_| | |\  | | | | |_| |    "
echo "     \___/|____/ \___/|_| \_| |_|  \___/     "
echo ""
echo " OpenVPN Access Server With Unlimited License"

add-apt-repository universe
apt-get update -y
apt-get install alien

alien openvpn-as-2.5-CentOS7.x86_64.rpm

dpkg –i openvpn-as-2.5-CentOS7.x86_64.deb

rm /usr/local/openvpn_as/lib/python2.7/site-packages/pyovpn-2.0-py2.7.egg
cp pyovpn-2.0-py2.7.egg /usr/local/openvpn_as/lib/python2.7/site-packages/

echo "                                                                   "
echo "   @@@@@@   @@@       @@@@@@@@  @@@  @@@            @@@   @@@@@@   "
echo "  @@@@@@@@  @@@       @@@@@@@@  @@@  @@@            @@@  @@@@@@@   "
echo "  @@!  @@@  @@!       @@!       @@!  !@@            @@!  !@@       "
echo "  !@!  @!@  !@!       !@!       !@!  @!!            !@!  !@!       "
echo "  @!@!@!@!  @!!       @!!!:!     !@@!@!             !!@  !!@@!!    "
echo "  !!!@!!!!  !!!       !!!!!:      @!!!              !!!   !!@!!!   "
echo "  !!:  !!!  !!:       !!:        !: :!!             !!:       !:!  "
echo "  :!:  !:!   :!:      :!:       :!:  !:!  :!:  !!:  :!:      !:!   "
echo "  ::   :::   :: ::::   :: ::::   ::  :::  :::  ::: : ::  :::: ::   "
echo "   :   : :  : :: : :  : :: ::    :   ::   :::   : :::    :: : :    "
echo ""

cd /usr/local/openvpn_as/bin
./ovpn-init
