1) connect to switch with a telnet 
2) connect switch and PC-A with a cable through F0/6
3) configure switch from other PC:
    3.1) Switch> enable
    3.2) Switch# config t
    3.3) Switch(config)# hostname S1
    3.4) S1(config)# no ip domain-lookup
    3.5) interface vlan 1
    3.6) ip address 192.168.1.2 255.255.255.0
    3.7) no shutdown
    3.8) end
4) go to PC-A and set IPv4 to 192.168.1.3 with a subnet mask 255.255.255.0
5) set default gateway of PC-A to 192.168.1.1
6) ping 192.168.1.2 from PC-A

http://standards-oui.ieee.org/oui.txt -- there are all manufacturer codes

... OUI of NIC (of PC-A) is the first 6 hexadecimal digits of Physical (MAC) address
... SERIAL number of this NIC is next 6 hexadecimal digits

7) run ipconfig /all on PC-A to see all info
8) select and copy first 6 digits of Physical address
9) go to the link above, and find the manufacturer of NIC (separate digits by two with dashes like 00-00-00)

10) go to switch cli, enter enable and then show interfaces vlan 1 to find the MAC address
(bia -> initial MAC address -> Burned-in address)

11) enable
12) show arp
Layer 2 -> Hardware Addr
Layer 3 -> Address

12) show mac address-table
13) ping S1 from PC-A (ping 192.168.1.2)
14) switch will display MAC address of PC-A, type will be DYNAMIC with Fa0/6 port

-- Questions:
15) Can you have broadcasts at the Layer 2 level? If so, what would the MAC address be?
You can, ARP will use broadcast to find the MAC address. Broadcast address is FF-FF-FF-FF-FF-FF

16) Why would you need to know the MAC address of a device?
It can be easier to find device by it's MAC instead of IPv4 in a large network.
OUI of MAC can show the manufacturer of a device to narrow down the search
Security features can be applied at Layer 2