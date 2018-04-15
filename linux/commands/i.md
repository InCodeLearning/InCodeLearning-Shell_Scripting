## ifconfig - interfaces config, similar to windows ipconfig

```bash
ifconfig
# inet addr: ip address of the network adpater
# HWaddr is hardware address, mac address
# lo localhost loopback for testing within this machine, not accessible from lan or outside

# ssh to server, shut down then cannot connect
ifconfig eth0 up/down # start or shut down that adapter card

# add/delete ipv6 address
ifconfig eth0 add/del 33ffe:3240:800:1005::2/64

# modify MAC address
ifconfig eth0 hw ether 00:AA:BB:CC:DD:EE
 
# configure ip address
ifconfig eth0 192.168.120.56 [netmask 255.255.255.0] [broadcast 192.168.120.255]

# ifconfig configuration does not stay after restart
# modify configuration files for permanent change
```
