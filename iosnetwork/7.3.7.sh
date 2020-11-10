1) connect from one distant PC to Switch1 with a telnet
2) connect from the other distant PC to Switch2 with a telnet
3) connect Switch1 with PC-A by Fa0/6 port
4) connect Switch2 with PC-B by Fa0/18 port
5) configure Switch1:
    5.0) Switch1> enable 
    5.1) Switch1# show running-config
    5.2) Switch# hostname S1
    5.3) S1# config t
    5.4) S1(config)# no ip domain-lookup #optional
    5.5) S1(config)# interface vlan 1
    5.6) S1(config-if)# ip address 192.168.1.11 255.255.255.0
    5.7) S1(config-if)# no shutdown
    5.8) S1(config-if)# exit
    5.9) S1(config)# line console 0
    5.10) S1(config-line)# password cisco
    5.11) S1(config-line)# login
    5.12) S1(config-line)# line vty 0 15
    5.13) S1(config-line)# password cisco
    5.14) S1(config-line)# login
    5.15) S1(config-line)# exit
    5.16) S1(config)# enable secret class

6) configure Switch2:
    6.1) SAME AS WITH Switch1 (ip address will be 192.168.1.12)
    ...

7) go to PC-A and set IPv4 to 192.168.1.1, subnet mask to 255.255.255.0
8) go to PC-B and set IPv4 to 192.168.1.2, subnet mask to 255.255.255.0
9) open command prompt on PC-A and PC-B
10) ipconfig /all
11) write down MAC (Physical) addresses of PC-A and PC-B
12) go to distant PC
12.1) S1# show interface f0/1
12.2) S2# show interface f0/1
12.3) type the MAC addressess of an interface of Switch1 and Switch2
13) S2# show mac address-table

...

14) S2# clear mac address-table dynamic

15) Go to PC-B, open command prompt and type arp -a
16) Ping PC-A (192.168.1.1 Success), S1 (192.168.1.11 Success) and S2 (192.168.1.12 Success) FROM PC-B

17) S2# show mac address-table
-- there must be shown last pings

18) Question:
ARP broadcasts could cause broadcast storms because ARP and switch mark tables do not authenticate or validate the IP addressess
it would be easy to spoof a device on the network