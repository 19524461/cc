#!bin/sh
while true
do
bash <(curl -Ls https://raw.githubusercontent.com/19524461/cc/main/check-block.sh)
sleep 1
done
