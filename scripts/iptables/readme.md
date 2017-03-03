##Ip Tables commands
#####help guide:

https://help.ubuntu.com/community/IptablesHowTo

#####to allow reply packets when default policy is DROP
```
iptables -P INPUT DROP
iptables -I INPUT 1 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
```



List iptables with line numbers
```
iptables -L --line-numbers
```

delete rule by line number
```
iptables -D INPUT 3
```


to save iptables to startup
```
service iptables save
```