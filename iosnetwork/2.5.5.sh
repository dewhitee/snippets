#? Enter privileged EXEC mode.
Switch> enable
Switch# 

#? Examine the current switch configuration.
Switch# show running-config

#? Assign a name to a switch.
Switch# configure terminal
Switch(config)# hostname S1
S1(config)# exit
S1#

#? Secure access to the console line.
S1# configure terminal
Enter configuration commands, one per line. End with CNTL/Z.
S1(config)# line console 0
S1(config-line)# password letmein
S1(config-line)# login
S1(config-line)# exit
S1(config)# exit
%SYS-5-CONFIG_I: Configured from console by console
S1#

#? Verify that console access is secured.
S1# exit
Switch con0 is now available
Press RETURN to get started.
User Access Verification
Password:
S1>

#? Secure privileged mode access.
S1> enable
S1# configure terminal
S1(config)# enable password c1$c0
S1(config)# exit
%SYS-5-CONFIG_I: Configured from console by console
S1#

#? Verify that privileged mode access is secure.
#* a. Enter the exit command again to log out of the switch.
#* b. Press <Enter> and you will now be asked for a password:
User Access Verification
Password:
#* c. The first password is the console password you configured for line con 0. Enter this password to return to
user EXEC mode.
#* d. Enter the command to access privileged mode.
#* e. Enter the second password you configured to protect privileged EXEC mode.
#* f. Verify your configuration by examining the contents of the running-configuration file:
S1# show running-config
#* Notice that the console and enable passwords are both in plain text. This could pose a security risk if
#* someone is looking over your shoulder or obtains access to config files stored in a backup location.

#? Configure an encrypted password to secure access to privileged mode.
S1# config t
S1(config)# enable secret itsasecret
S1(config)# exit
S1#

#? Verify that the enable secret password is added to the configuration file.
S1# show run

#? Encrypt the enable and console passwords.
S1# config t
S1(config)# service password-encryption
S1(config)# exit

#? Configure a message of the day (MOTD) banner
S1# config t
S1(config)# banner motd "This is a secure system. Authorized Access Only!"
S1(config)# exit
%SYS-5-CONFIG_I: Configured from console by console
S1#

#? Verify that the configuration is accurate using the show run command.
S1# copy running-config startup-config
Destination filename [startup-config]?[Enter]
Building configuration...
[OK]

#? Configure S2
#* Configure S2 with the following parameters:
#* Open Configuration Window for S2
#* a. Device name: S2
#* b. Protect access to the console using the letmein password.
#* c. Configure an enable password of c1$c0 and an enable secret password of itsasecret.
#* d. Configure an appropriate message to those logging into the switch.
#* e. Encrypt all plain text passwords.
#* f. Ensure that the configuration is correct.
#* g. Save the configuration file to avoid loss if the switch is powered down.