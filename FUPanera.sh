
MYIPADDRESS="aa:bb:cc:dd:ee:ff";

echo $MYIPADDRESS;

RANDOMIPADDRESS=`openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`;

echo $RANDOMIPADDRESS;

sudo ifconfig en0 ether $RANDOMIPADDRESS;
sudo ifconfig en0 Wi-Fi $RANDOMIPADDRESS;