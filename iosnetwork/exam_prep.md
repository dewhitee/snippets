# Connection
    ip: 81.198.118.168
    port: 4023
    username: xxxxxx
    password: xxxxxxxx

# Links
[IP address to binary calculator](https://miniwebtool.com/ip-address-to-binary-converter/?ip=192.168.33.182) |
[VLSM table creation (Part 1)](https://subnettingpractice.com/vlsm.html) |
[Calculate IPv6 or IPv4 addresses](http://www.gestioip.net/cgi-bin/subnet_calculator.cgi)

# Show commands:
```R1# show running-config```         - Проверяет текущую конфигурацию и параметры

```R1# show interfaces```             - Проверяет состояние интерфейса и отображает все сообщения об ошибках

```R1# show ip interface```           - Проверяет информацию уровня 3 интерфейса

```R1# show ip interface brief```     - Предоставляет сводку по ключевым данным для всех сетевых интерфейсов на маршрутизаторе.

```R1# show ipv6 interface g0/0/0```

```R1# show arp```                    - Проверяет список известных узлов в локальных сетяхEthernet. Команда arp выполняется из командной строки Windows, как показано на рисунке. Командаотображает список всех устройств, находящихся в данный момент в ARP-кэше узла

```R1# show ip route```               - Проверяет информацию маршрутизации уровня 3

```R1# show protocols```              - Проверяет, какие протоколы работают

```R1# show version```                - Проверяет память, интерфейсы и лицензии устройства

```R1# show cdp neighbors```          - Протокол CDP предоставляет следующие сведения о каждом изсоседних устройств CDP.

```C:>ipconfig /all```

```C:>ipv6config /all```

# Terminology
#### Адреса канального и сетевого (IPv4 и IPV6) уровня:
Как канальный, так и сетевой уровни используют адресацию для доставки данных из источника в пункт назначения.
Адрес источника и назначения сетевого уровня необходим для доставки IP-пакета от источника к конечному месту назначения.
Адрес источника и места назначения канального уровня необходим для доставки кадра канала данных от одной сетевой интерфейсной платы (NIC) к другой сетевой интерфейсной плате в той же сети.
Адреса канального уровня
Поскольку адресация канала передачи данных является локальной адресацией, она будет иметь источник и пункт назначения для каждого сегмента или перехода к пункту назначения.
* MAC-адресация для первого сегмента:
* Источник — (PC1 NIC) отправляет кадр
* Назначение — (первый маршрутизатор - интерфейс DGW) получает кадр
Адреса канального уровня (Продолжение)
MAC-адресация для второго перехода:
* Источник - (Первый маршрутизатор - интерфейс выхода) отправляет кадр
* Назначение — (второй маршрутизатор) получает кадр
Адреса канального уровня (Продолжение)
MAC-адресация для последнего сегмента:
* Источник - (Второй маршрутизатор - интерфейс выхода) отправляет кадр
* Назначение — (сетевая плата веб-сервера) получает фрейм
Адреса канального уровня (Продолжение)
* Обратите внимание, что пакет не изменяется, но кадр изменяется, поэтому IP-адресация L3 не меняется от сегмента к сегменту, как MAC-адресация L2.
* Адрес L3 остается прежним, так как он является глобальным, а конечным адресатом по-прежнему является веб-сервер.

#### Устройства сетевого и канального уровня:
На сетевом уровне работает такое сетевое устройство, как маршрутизатор.
С канальным уровнем обычно связаны следующие сетевые соединительные устройства: мосты; коммутаторы; сетевые интерфейсные платы (сетевые интерфейсные карты, адаптеры и т.п).
    
#### Что такое маскa (её назначение):
Структура адреса IPv4 Маска подсети
* Для идентификации сетевой и узловой части IPv4-адреса маска подсети побитово сравнивается с IPv4-адресом слева направо, как показано на рисунке.
* Сам процесс, используемый для определения сетевой и узловой частей адреса, называется логической операцией И (AND).
Маска подсети IPv4 — это 32-битовое значение, которое отделяет сетевую часть адреса от узловой части. Маска подсети в сочетании с адресом IPv4 определяет, к какой конкретной подсети относится устройство.

#### Что такое префикс (и его назначение):
Структура адреса IPv4 Длина префикса
* Длина префикса является менее громоздким методом, используемым для идентификации адреса маски подсети.
* Длина префикса означает количество бит, установленных в единицу (1) в маске подсети.
* Следовательно, нужно подсчитать число битов в маске подсети и поставить перед этим значением косую черту.

#### Что такое шлюз по умолчанию (Default Gateway):
Шлюз по умолчанию на хосте
* Шлюз по умолчанию используется, когда хост отправляет пакет на устройство в другой сети.
* Адресом шлюза по умолчанию, как правило, является адрес интерфейса маршрутизатора, связанный с локальной сетью, в которой находится узел.
* Чтобы достичь PC3, PC1 обращается к пакету с IPv4-адресом PC3, но пересылает пакет на шлюз по умолчанию, интерфейс G0/0/0 R1.

#### Широковещательная (broadcast) рассылка:
Одноадресная, широковещательная и многоадресная рассылка IPv4 Широковещательная передача
* Широковещательная передача отправляет пакет на все другие IP-адреса назначения.
* Например, компьютер 172.16.4.1 отправляет широковещательный пакет всем узлам IPv4.
Примечание. Широковещательная передача используется в сетях IPv4, но не используется для IPv6.

# Prefixes
    /32 = 255.255.255.255 = 11111111.11111111.11111111.11111111
    /31 = 255.255.255.254 = 11111111.11111111.11111111.11111110
    /30 = 255.255.255.252 = 11111111.11111111.11111111.11111100
    /29 = 255.255.255.248 = 11111111.11111111.11111111.11111000
    /28 = 255.255.255.240 = 11111111.11111111.11111111.11110000
    /27 = 255.255.255.224 = 11111111.11111111.11111111.11100000
    /26 = 255.255.255.192 = 11111111.11111111.11111111.11000000
    /25 = 255.255.255.128 = 11111111.11111111.11111111.10000000
    /24 = 255.255.255.0 =   11111111.11111111.11111111.00000000

    /23 = 255.255.254.0 =   11111111.11111111.11111110.00000000
    /22 = 255.255.252.0 =   11111111.11111111.11111100.00000000
    /21 = 255.255.248.0 =   11111111.11111111.11111000.00000000
    /20 = 255.255.240.0 =   11111111.11111111.11110000.00000000
    /19 = 255.255.224.0 =   11111111.11111111.11100000.00000000
    /18 = 255.255.192.0 =   11111111.11111111.11000000.00000000
    /17 = 255.255.128.0 =   11111111.11111111.10000000.00000000
    /16 = 255.255.0.0 =     11111111.11111111.00000000.00000000

    /15 = 255.254.0.0 =     11111111.11111110.00000000.00000000
    /14 = 255.252.0.0 =     11111111.11111100.00000000.00000000
    /13 = 255.248.0.0 =     11111111.11111000.00000000.00000000
    /12 = 255.240.0.0 =     11111111.11110000.00000000.00000000
    /11 = 255.224.0.0 =     11111111.11100000.00000000.00000000
    /10 = 255.192.0.0 =     11111111.11000000.00000000.00000000
    /9 = 255.128.0.0 =      11111111.10000000.00000000.00000000
    /8 = 255.0.0.0 =        11111111.00000000.00000000.00000000

    /7 = 254.0.0.0 =        11111110.00000000.00000000.00000000
    /6 = 252.0.0.0 =        11111100.00000000.00000000.00000000
    /5 = 248.0.0.0 =        11111000.00000000.00000000.00000000
    /4 = 240.0.0.0 =        11110000.00000000.00000000.00000000
    /3 = 224.0.0.0 =        11100000.00000000.00000000.00000000
    /2 = 192.0.0.0 =        11000000.00000000.00000000.00000000
    /1 = 128.0.0.0 =        10000000.00000000.00000000.00000000
    /0 = 0.0.0.0 =          00000000.00000000.00000000.00000000

# Part 1 (20 min):
## Example (Given ip address 192.168.33.128 and mask /25) ----------------------------------:
    192.168.33.128 == 11000000.10101000.00100001.10000000
    /25 = 255.255.255.128

### Subnet A (requires 40 hosts)
#### Subnet bit count | Количество битов в подсети:
    We need 40 hosts - the minimum count of bits for this is 6, as 2^6 = 64
    32 - 6 = 26, so the mask will be /26 = 255.255.255.192
    Count of bits will be 26 - 25 = 1

#### New subnet IP mask (binary) | Новая маска IP (двоичная):
    /26 = 11111111.11111111.11111111.11000000

#### New subnet IP mask (decimal) | Новая маска IP (десятичная):
    /26 = 255.255.255.192

#### Max available subnets count | Максимальное количество доступных подсетей:
    2^(26-25) = 2^1 = 2

#### Max available hosts count | Число узлов, пригодных для использования в каждой подсети:
    2^(32-26) - 2 = 2^6 - 2 = 62

#### Subnet IP | Подсеть IP:
    192.168.33.128

#### First host IP-address | Первый IP-адрес узла:
    192.168.33.129

#### Last host IP-address | Последний IP-адрес узла:
    192.168.33.190

### ------------------------------------------
### Subnet B (requires 25 hosts)
#### Subnet bit count | Количество битов в подсети:
    We need 25 hosts - the minimum count of bits for this is 5, as 2^5 = 32
    32 - 5 = 27, so the mask will be /27 = 255.255.255.224
    Count of bits will be 27 - 25 = 2

#### New subnet IP mask (binary) | Новая маска IP (двоичная):
    /27 = 11111111.11111111.11111111.11100000

#### New subnet IP mask (decimal) | Новая маска IP (десятичная):
    /27 = 255.255.255.128

#### Max available subnets count | Максимальное количество доступных подсетей:
    2^(27-25) = 2^2 = 4

#### Max available hosts count | Число узлов, пригодных для использования в каждой подсети:
    2^(32-27) - 2 = 2^5 - 2 = 30

#### Subnet IP | Подсеть IP:
    192.168.33.192

#### First host IP-address | Первый IP-адрес узла:
    192.168.33.193

#### Last host IP-address | Последний IP-адрес узла:
    192.168.33.222

### ------------------------------------------:
## Table
#### PC-A
    192.168.33.129      /26     192.168.33.190

#### R1-G0/0
    192.168.33.190      /26     NO DEFAULT GATEWAY

#### R1-G0/1
    192.168.33.222      /27     NO DEFAULT GATEWAY

#### S1
    192.168.33.221      /27     NO DEFAULT GATEWAY

#### PC-B
    192.168.33.193      /27     192.168.33.222

# Part 2 (30 min):
## Step 1 (Configuring switch S1):
#### Set switch name
    Switch> enable
    Switch# config t
    Switch(config)# hostname S1

#### Set SVI
    S1(config)# int vlan 1
    S1(config-if)# ip address 192.168.33.221 255.255.255.224

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
###### Description
    R1(config)# int g0/0
    R1(config-if)# description "G0/0 (Connected to the PC-A)"

###### IPv4 level 3
    R1(config)# int g0/0
    R1(config-if)# ip address 192.168.1.1 255.255.255.0

###### Interface activation
    R1(config-if)# no shutdown

#### Interface G0/1
###### Description
    R1(config)# int g0/1
    R1(config-if)# description "G0/1 (Connected to the Switch)"

###### IPv4 level 3
    R1(config)# int g0/1
    R1(config-if)# ip address ... ...

###### Interface activation
    R1(config-if)# no shutdown

#### Create RSA keys
    R1(config)# crypto key generate rsa         || crypto key generate rsa modulus 1024
    How many bits in the modulus[512]: 1024

# Part 3 (5 min) Testing and checking the IPv4 connection:
## Step 1 (Check connection to the network):
#### PC-A to R1, G0/0
    192.168.33.190

#### PC-A to R1, G0/1
    192.168.33.222

#### PC-A to S1 VLAN 1
    192.168.33.221

#### PC-A to PC-B
    192.168.33.193

#### PC-B to R1, G0/1
    192.168.33.222

#### PC-B to R1, G0/0
    192.168.33.190

#### PC-B to S1 VLAN 1
    192.168.33.221

#### Which commands can also be used to show the network delay on the path to the destination?
    tracert, traceroute

# Part 4 (10 min) Set IPv6 addressing on the R1:
## Step 1 (R1):
#### Set G0/0 to use the first address of Subnet A
    R1(config)# int g0/0
    R1(config-if)# ipv6 address 2002:DB8:ACAD:1::/64
    R1(config-if)# ipv6 address FE80::1 link-local
    R1(config-if)# no shutdown

#### Set G0/1 to use the first address of Subnet B
    R1(config)# int g0/1
    R1(config-if)# ipv6 address 2002:DB8:ACAD:2::/64
    R1(config-if)# ipv6 address FE80::1 link-local
    R1(config-if)# no shutdown

#### Activate one-address routing of IPv6
    R1(config)# ipv6 unicast-routing

# Part 5 (5 min) Testing and checking IPv6:
## Step 1 (IPv6 address on the Hosts):
#### PC-A (IPv6 and Default Gateway)
    ipv6 = ????????????????????, default gateway = ????????????????????,

#### PC-B (IPv6 and Default Gateway)
    ipv6 = ????????????????????, default gateway = ????????????????????,

## Step 2 (Ping to check IPv6 connection)
#### PC-A to R1, G0/0
    2002:DB8:ACAD:1::/64

#### PC-A to R1, G0/1
    2002:DB8:ACAD:2::/64

#### PC-A to PC-B
    ????????????????????

#### PC-B to R1, G0/1
    2002:DB8:ACAD:2::/64

#### PC-B to R1, G0/0
    2002:DB8:ACAD:1::/64

# Part 6 (10 min) Cleaning up:
#### Switch
    S1# erase startup-config
    S1# reload

#### Router
    R1# erase startup-config
    R1# reload

# Part 7 (0 min) Questions:

#### ...
