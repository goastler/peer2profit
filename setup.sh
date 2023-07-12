
echo env $EMAIL $ID

mkdir -p /config/xdg/config/

echo "
[General]
Username=$EMAIL
hideToTrayMsg=false
installid2=$ID
locale=en_US
" > /config/xdg/config/org.peer2profit.peer2profit.ini

mkdir /root/.config
cp /config/xdg/config/org.peer2profit.peer2profit.ini /root/.config/org.peer2profit.peer2profit.ini

./init