echo "Change MAC Address by selecting the network interface:"
echo "1) wlan0"
echo "2) eth0"
read inputstring
case $inputstring in
 1) echo "enter the mac address you want to modify to"
 read addr
 sudo ifconfig wlan0 down
 sudo ifconfig wlan0 hw ether $addr
 sudo ifconfig wlan0 up
 echo "MAC address successfully changed to $addr"
 ;;
 2)echo "enter the mac address you want to modify to"
 read addr
 sudo ifconfig eth0 down
 sudo ifconfig eth0 hw ether $addr
 sudo ifconfig eth0 up
 echo "MAC address successfully changed to $addr"
 ;;
 *) echo "wrong input"
esac


