#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 400 ]
then
  cat /root/status-block.txt | grep "on" && bash <(curl -Ls https://raw.githubusercontent.com/19524461/cc/main/blockoff.sh) && echo "off" > /root/status-block.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status-block.txt | grep "off" && bash <(curl -Ls https://raw.githubusercontent.com/19524461/cc/main/blockon.sh) && echo "on" > /root/status-block.txt && clear && echo -e "ANTI DDOS ON"
fi
