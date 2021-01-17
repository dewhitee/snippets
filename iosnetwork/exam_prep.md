# Part 1 (20 min):

## Subnet A/B:

    #### Subnet bit count:

    #### New subnet IP mask (binary):

    #### New subnet IP mask (decimal):

    #### Max available subnets count:

    #### Max available hosts count:

    #### Subnet IP:

    #### First host IP-address:

    #### Last host IP-address:

## Table

    #### PC-A

    #### R1-G0/0

    #### R1-G0/1

    #### S1

    #### PC-B


# Part 2 (30 min):

## Step 1 (Configuring switch S1):

    #### Set switch name
        Switch> enable
        Switch# config t
        Switch(config)# hostname S1

    #### Set SVI

    #### Set encrypted pass
        S1(config)# enable secret ciscoenpass

    #### Set console pass
        S1(config)# line console 0
        S1(config)# password ciscoconpass
        S1(config)# login

    #### Set telnet pass
        S1(config)# line vty 0 15
        S1(config-line)# password ciscovtypass


## Step 2 (Configuring router R1):

    #### Disable DNS lookup
        Router> enable
        Router# config t
        Router(config)# no ip domain-lookup

    #### Set router name
        Router> enable
        Router# config t
        Router(config)# hostname R1

    #### Set domain name
        R1(config)# ip domain-name ccna-lab.com

    #### Set encrypted pass
        R1(config)# enable secret ciscoenpass

    #### Set console pass
        R1(config)# line console 0
        R1(config-line)# password ciscoconpass
        R1(config-line)# login

    #### Set telnet pass (VTY lines?)
        R1(config)# line vty 0 15
        R1(config-line)# password ciscovtypass
        R1(config-line)# login

    #### Set minimal pass length
        R1(config)# security password min-length 9

    #### Set admin in the local database
        R1(config)# username admin secret admin1pass

    #### Set VTY lines to use local database
        R1(config-line)# login local

    #### Set VTY lines to receive only SSH and Telnet
        R1(config)# line vty 0 15
        R1(config-line)# transport input telnet ssh

    #### Encrypt text passwords
        R1(config)# service password-encryption

    #### Banner motd
        R1(config)# banner motd "Unauthorized Access Is Prohibited!"

    #### Interface G0/0
        ##### Description

        ##### IPv4 level 3
            R1(config)# int g0/0
            R1(config-if)# ip address 192.168.1.1 255.255.255.0
            R1(config-if)# no shutdown

        ##### Interface administration

    #### Interface G0/1
        ##### Description

        ##### IPv4 level 3
            R1(config)# int g0/1
            R1(config-if)# ip address ... ...
            R1(config-if)# no shutdown

        ##### Interface administration

    #### Create RSA keys
        R1(config)# crypto key generate rsa         || crypto key generate rsa modulus 1024
        How many bits in the modulus[512]: 1024



# Part 3 (5 min) Testing and checking the IPv4 connection:

## Step 1 (Check connection to the network):

    #### PC-A to R1, G0/0

    #### PC-A to R2, G0/1

    #### PC-A to S1 VLAN 1

    #### PC-A to PC-B

    #### PC-B to R1, G0/1

    #### PC-B to R1, G0/0

    #### PC-B to S1 VLAN 1

    #### Which commands can also be used to show the network delay on the path to the destination?

# Part 4 (10 min) Set IPv6 addressing on the R1:

## Step 1 (R1):

    #### Set G0/0 to use the first address of Subnet A

    #### Set G0/1 to use the first address of Subnet B

    #### Activate one-address routing of IPv6

# Part 5 (5 min) Testing and checking IPv6:

## Step 1 (IPv6 address on the Hosts):

    #### PC-A (IPv6 and Default Gateway)
    
    #### PC-B (IPv6 and Default Gateway)

## Step 2 (Ping to check IPv6 connection)

    #### PC-A to R1, G0/0

    #### PC-A to R1, G0/1

    #### PC-A to PC-B

    #### PC-B to R1, G0/1

    #### PC-B to R1, G0/0

# Part 6 (10 min) Cleaning up:

    #### ...

    #### ...

# Part 7 (0 min) Questions:

    #### ...
