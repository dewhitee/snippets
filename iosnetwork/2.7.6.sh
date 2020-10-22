#? Configure S1 with a hostname
a. Click S1 and then click the CLI tab.
b. Enter the correct command to configure the hostname as S1.

#? Configure the console and encrypted privileged EXEC mode passwords. 
a. Use cisco for the console password.
b. Use class for the privileged EXEC mode password.

#? Verify the password configurations for S1.
...

#? Configure an MOTD banner.
Use an appropriate banner text to warn unauthorized access. The following text is an example:
Authorized access only. Violators will be prosecuted to the full extent of the law.

#?  Configure both PCs with IP addresses.
a. Click PC1 and then click the Desktop tab.
b. Click IP Configuration. In the Addressing Table above, you can see that the IP address for PC1 is
192.168.1.1 and the subnet mask is 255.255.255.0. Enter this information for PC1 in the IP Configuration
window.
c. Repeat steps 1a and 1b for PC2

#? Test connectivity to switches.
a. Click PC1. Close the IP Configuration window if it is still open. In the Desktop tab, click Command
Prompt.
b. Type the ping command and the IP address for S1 and press Enter.
Packet Tracer PC Command Line 1.0
PC> ping 192.168.1.253
Question:
Were you successful? Explain

#? Configure S1 with an IP address.
Switches can be used as plug-and-play devices. This means that they do not need to be configured for them
to work. Switches forward information from one port to another based on MAC addresses.
Question:
If this is the case, why would we configure it with an IP address?
Type your answers here.
Use the following commands to configure S1 with an IP address.
S1# configure terminal
Enter configuration commands, one per line. End with CNTL/Z.

S1(config)# interface vlan 1
S1(config-if)# ip address 192.168.1.253 255.255.255.0
S1(config-if)# no shutdown
%LINEPROTO-5-UPDOWN: Line protocol on Interface Vlan1, changed state to up
S1(config-if)#
S1(config-if)# exit
S1#

Question:
Why do you enter the no shutdown command?


#? Configure S2 with an IP address.
Use the information in the Addressing Table to configure S2 with an IP address.

#? Verify the IP address configuration on S1 and S2.
Use the show ip interface brief command to display the IP address and status of all the switch ports and
interfaces. You can also use the show running-config command.

#? Save configurations for S1 and S2 to NVRAM.
Question:
Which command is used to save the configuration file in RAM to NVRAM?

#? Verify network connectivity.
Network connectivity can be verified using the ping command. It is very important that connectivity exists
throughout the network. Corrective action must be taken if there is a failure. Ping S1 and S2 from PC1 and
PC2.
a. Click PC1 and then click the Desktop tab.
b. Click Command Prompt.
c. Ping the IP address for PC2.
d. Ping the IP address for S1.
e. Ping the IP address for S2.
Note: You can also use the ping command on the switch CLI and on PC2.
All pings should be successful. If your first ping result is 80%, try again. It should now be 100%. You will learn
why a ping may sometimes fail the first 
