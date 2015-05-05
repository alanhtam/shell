date;
echo "Uptime:"
uptime
echo "Connected:"
w
echo "-----------"
echo "Recent logins:"
last -a |head -5
echo "-----------"
echo "Usage:"
df -h | xargs | awk '{print "Free/total disk: " $11 " / " $9}'
free -m | xargs | awk '{print "Free/total memory: " $17 " / " $8 " MB"}'
echo "-----------"
echo "Most expensive:"
top -b |head -3
echo
	top -b |head -10 |tail -4
echo "-----------"
echo "TCP ports:"
nmap -p- -T4 127.0.0.1
echo "-----------"
echo "Connections:"
ss -s
echo "-----------"
echo "Processes:"
ps auxf --width=200
echo "-----------"
echo "Virtual memory:"
vmstat 1 5