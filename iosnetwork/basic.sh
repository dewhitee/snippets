#! Modes
#* User EXEC mode:               - provides access to limited number of basic monitoring commands.
Router>

Switch>

#* Privileged EXEC mode:         - provides access to all commands and functions.
Router#

Switch#

#* Global config mode:           - is used to access configuration parameters on the device.
Switch(config)#

#* Line config mode:             - is used to set the access through the physical or virtual line 
#* (console, SSH, Telnet or AUX).
Switch(config-line)#

#* Interface setting mode:       - is used to customize the port of a switch or router's interface.
Switch(config-if)#

#! Entering modes
#* To switch from the User EXEC mode to the Privileged EXEC mode use the *enable* command:
Switch> enable
Switch#

#* To enter AND exit the Global config mode enter the following command of Privileged EXEC mode:
configure terminal

#* To go back to the Privileged EXEC mode type *exit*:
Switch(config)#
Switch(config)#exit
Switch#

#* To enter the Line config mode use the *line* command with the string/line control type,
#* to exit this mode and return to the Global config mode - use *exit* command:
Switch(config)#line console 0
Switch(config-line)#exit
Switch(config)#

#! Addition config modes
#* To exit the sub-config mode and return to the Global config mode use the *exit* command
#* to return into the Privileged EXEC mode use *end* command or *CTRL+Z*:
Switch(config)#line console 0
Switch(config-line)#end
Switch#

#* To go from one sub-config mode to another - use required command of the sub-config mode,
#? Note: that command line dialog after the network device name changed from (config-line)# to (config-if)#.
Switch(config-line)#interface FastEthernet 0/1
Switch(config-if)#

#! Basic structure of IOS commands:
Switch>show ip protocols

#? Where:
#           Switch -> Prompt
#           show -> Command
#           ip -> Space
#           protocols -> Keyword or Argument
#
Switch>ping 192.168.10.5

# Keyword - unique parameter, defined in the OS                             (on the image - ip protocols)
# Argument - is not defined , it's value or variable is defined by user     (on the image - 192.168.10.5)

# 

p?          # shows the possible commands starting with 'p'
p ?         # shows the possible arguments for 'p' command

# R1(config)# int Fa 0\0            # enter the global config mode
# R1(config-if)#                    # enter the line config mode

EXEC configure terminal             # to enter or exit the privileged mode
exit                                # to exit from the mode

# to remove the command - type the same command with the 'no' argument

# psw 1: CISCO
# psw 2: class

# To defend the access to VTY line:
# configure terminal
# ...

# startup-config, running-config
service password-encryption             # 
show running-config                     #
                                        #
banner mod #the message of the day#     # banner that will be showen on the unsanctioned access
