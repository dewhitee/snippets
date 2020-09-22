#! Virtual switch interface
Switch# configure terminal
Switch(config)# interface vlan 1


#! Levels
#* Each level has it's own protocols
7,
6,
5,
4, #? - TP
3, #? Network level - ip address
2, #? Canal level - MAC address
1, #? - 

#* vlan 1 is the only one existing by default

#! Steps to set SVI switch in the global config

#* set ipv4 with interface configuring command *ip address {IP} {MASK}*:
Switch(config-if)# ip address 192.168.1.20 255.255.255.0

#* by default all interfaces are OFF and need to be enabled by *no shutdown* command:
Switch(config-if)# no shutdown