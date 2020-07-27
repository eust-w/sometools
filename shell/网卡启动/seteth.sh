#!/bin/bash
ip a
echo -n "show your error netcard:"
read nc 
sed -i 's/ONBOOT=no/ONBOOT=YES/g' ./../etc/sysconfig/network-scripts/ifcfg-$nc
service network restart

IP_LIST="www.baidu.com www.google.com www.douban.com"
for ip in $IP_LIST;do
    if ping -c 1 $ip >/dev/null
    then
        echo “ping $ip is sucess”
    else
        echo "ping $ip is failure"
    fi
done
