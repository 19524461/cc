#!bin/sh
connect=$(netstat -alntp | grep :443 | wc -l)
if [ $connect -lt 700 ]
then
  cat /root/status-js.txt | grep "on" && bash <(curl -Ls https://raw.githubusercontent.com/19524461/cc/main/jsVNoff.sh) && echo "off" > /root/status-js.txt && clear && echo -e "ANTI DDOS OFF"
else
  cat /root/status-js.txt | grep "off" && bash <(curl -Ls https://raw.githubusercontent.com/19524461/cc/main/jsVNon.sh) && echo "on" > /root/status-js.txt && clear && echo -e "ANTI DDOS ON"
fi
