1. Connect PC-A with S1 with straight-through
2. Connect PC-A with S1 with console cabel, or connect to S1 via telnet

3. Connect PC-B with R1 with straight-through
4. Connect PC-B with R1 with console cabel, or connect to R1 via telnet

5. Go to PC-B terminal and:
    5.1. Would you like to enter the initial configuration dialog? [yes/no]: 
    no
    5.2. Router> enable
    5.3. Router# erase startup-config
    5.4. Continue? [confirm]
    [enter]
    5.5. Proceed with reload? [confirm]
    [enter]
    5.6. waiting...
    
6. Go to PC-A terminal and:
    6.2. Switch> enable
    6.3. Switch# erase startup-config
    6.4. Continue? [confirm]
    [enter]
    6.5. Switch# delete vlan.dat
    6.6. Delete filename [vlan.dat]?
    [enter]
    6.7. Delete flash:/vlan.dat? [confirm]
    [enter]
    6.8. Switch# reload
    6.9. Proceed with reload? [confirm]
    [enter]

7. Go to PC-A ip configuration dialog
    7.1. Set IPv4-address to 192.168.1.3
    7.2. Set subnet mask to 255.255.255.0 (as prefix is 24)
    7.3. Set default gateway to 192.168.1.1

    7.4. Set IPv6-address to 2001:db8:acad:1::3 
    7.5. Set prefix(length) to 64
    7.5. Set default gateway to fe80::1

8. Go to PC-B ip configuration dialog
    8.1. Set IPv4-address to 192.168.0.3
    8.2. Set subnet mask to 255.255.255.0 (as prefix is 24)
    8.3. Set default gateway to 192.168.0.1

    8.4. Set IPv6-address to 2001:db8:acad::3 
    8.5. Set prefix(length) to 64
    8.5. Set default gateway to fe80::1

9. Go to command prompt of PC-A and ping PC-B from it. 
    9.1. ping 192.168.0.3 255.255.255.0
    9.2. ping 2001:db8:acad::3
    Pings will NOT be successful yet, because router default-gateways have not been configured yet, so
    Layer 3 traffic is not being routed between subnets.

10. Configuring Router (R1):
    10.1. Go to terminal on PC-B
    10.2. Would you like to enter the initial configuration dialog? [yes/no]
    no
    10.3. Router> enable
    10.4. Router# config t
    10.5. Router(config)# hostname R1
    10.6. R1(config)# no ip domain-lookup
    10.7. R1(config)# enable secret class
    10.8. R1(config)# line console 0
    10.9. R1(config-line)# password cisco
    10.10. R1(config-line)# login
    10.11. R1(config-line)# line vty 0 15
    10.12. R1(config-line)# password cisco
    10.13. R1(config-line)# login
    10.14. R1(config-line)# exit
    10.15. R1(config)# service password-encryption      (encrypts plaintext passwords)
    10.16. R1(config)# banner motd "Unauthorized Access is Prohibited!"

    - Configuring interfaces
    10.17. R1(config)# int g0/0/0
    10.18. R1(config-if)# ip address 192.168.0.1 255.255.255.0
    10.19. R1(config-if)# ipv6 address 2001:db8:acad::1/64
    10.20. R1(config-if)# ipv6 address fe80::1 link-local
    10.21. R1(config-if)# no shutdown                           (to enable the interface)

    10.22. R1(config-if)# int g0/0/1
    10.23. R1(config-if)# ip address 192.168.1.1 255.255.255.0
    10.24. R1(config-if)# ipv6 address 2001:db8:acad:1::1/64
    10.25. R1(config-if)# ipv6 address fe80::1 link-local
    10.26. R1(config-if)# no shutdown
    
    - Configure an interface description for each interface indicating which device is connected to it 
    10.27. R1(config-if)# int g0/0/0
    10.28. R1(config-if)# description Connected to Host PC-B
    10.29. R1(config-if)# int g0/0/1
    10.30. R1(config-if)# description Connected to f0/5 on S1
    10.31. R1(config-if)# exit
    
    - Enable IPv6 routing
    10.32. R1(config)# ipv6 unicast-routing
    10.33. R1(config)# exit
    
    - Save running configuration
    10.33. R1# copy running-config startup-config
    [enter]

    - Set the clock on the router
    10.34. R1# clock set [HOUR]9:10:00 [DAY]12 Nov [YEAR]2020

11. Go to command prompt on PC-A and ping PC-B
    11.1. ping 192.168.0.3          - Ping must be successful now. (first Request will fail because of ARP process)
    11.2. ping 2001:db8:acad::3     - This also must be successful.

12. Go to command prompt on PC-B and ping PC-A
    12.1 ping 192.168.1.3
    12.2. ping 2001:db8:acad:1::3

Note that there are TWO subnets in the topology:
    PC-A with S1 and G0/0/1 on R1 is a FIRST subnet
    and PC-B with G0/0/0 on R1 is a SECOND subnet

13. Go to PC-A terminal and configure Switch1
    13.1. Switch> enable
    13.2. Switch# config t
    13.3. Switch(config)# hostname S1
    13.4. S1(config)# no ip domain lookup

    13.5. S1(config)# int vlan 1
    13.6. S1(config-if)# ip address 192.168.1.2 255.255.255.0
    13.7. S1(config-if)# no shutdown
    13.8. S1(config-if)# exit

    13.9. S1(config)# ip default-gateway 192.168.1.1
    13.10. S1(config)# exit

    13.11. S1# copy running-config startup-config
    [enter]
    
14. Verify connectivity
    14.1. Go to command prompt on PC-A to ping PC-B
    14.2. ping 192.168.0.3
    14.3. ping 2001:db8:acad::3

    14.4. Go to terminal on PC-A to ping from Switch to PC-B
    14.5. S1# ping 192.168.0.3          (first ping will fail due to ARP process)

15. Display the routing table on the router
    15.1. Go to terminal on PC-B
    15.2. R1# show ip route
    C - Connected   are subnet ips
    L - Local   is the ip address of interface, not the network address. Is the host address on G0/0/0 or G0/0/1
    
    15.3. R1# show ipv6 route
    
16. Display interface information on the router R1
    16.1. R1# show ip interface g0/0/1
    16.2. R1# show interface g0/0/1         (to show MAC address)
    16.3. R1# show ipv6 interface g0/0/1            (2001:db8:acad:1::/64 is the network address and 2001:db8:acad:1::1 is the host address)

17. Display a summary list of interfaces on the router and Switch
    17.1. R1# show ip interface brief
    17.2. R1# show ipv6 interface brief
    
    17.3. Go to PC-A terminal to enter Switch
    17.4. S1> enable
    17.5. S# show ip interface brief
    
18. Reflection questions
    1. If the G0/0/1 interface showed that it was administratively down, what interface configuration command would you use to turn the interface up?
    Answer: no shutdown
2. What would happen if you had incorrectly configured interface G0/0/1 on the router with an IP address of 192.168.1.2?
    Answer: ...

