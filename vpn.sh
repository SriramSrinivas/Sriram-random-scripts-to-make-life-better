#!/bin/bash
  
while true;
do
      
ping -c1 192.168.0.24 > /dev/null
 
if [ $? -eq 0 ]
then
	echo "ok"

else
command=$(pidof openvpn)
echo $command
if [ $command > 0 ]
then
  sudo kill $command
fi
sudo openvpn --config anvilubuntu.ovpn --daemon
fi	
echo "here"
sleep 10

done

