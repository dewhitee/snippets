.Default Gateway        #* - Interface address of the closest router.
.IP address             #* - Internet protocol address. Identifies the host and the network to which the host is attached.
.ipv4                   #* - 32bit (8 8bit values).
.ipv6                   #* - 128bit (4 16bit values).
.Host                   #* - Can be called an end device, or client. The term hosts specifically
# refers to devices on the network that are assigned a number for communication purposes. All computers that 
# are connected to a network and participate directly in network communication are classified as hosts.

.Server                 #* - Computer with software that allow to provide information, like email or web pages,
# to other end devices on the network.
#? Three common types of server software:
#! Email - The email server runs email server software. Clients use mail client software, such as Microsoft Outlook, 
# to access email on the server.
#! Web - The web server runs web server software. Clients use browser software, such as Windows Internet Explorer, 
# to access web pages on the server.
#! File - The file server stores corporate and user files in a central location. The client devices access these files 
# with client software such as the Windows File Explorer.

.Client                 #* - Type of a host. Have software for requesting and displaying the information
# obtained from the server. For example, a server requires web server software in order to provide web services
# to the network. A computer with server software can provide services simultaneously to many different clients.
# Example of a client software is a web browser. A single computer can also run multiple types of client software.
# For example, a user can check email and view a web page while instant messaging and listening to an audio stream.

.Peer-to-Peer           #* - Network where computers run both client and the server.
#? PROS:
# 1) Easy to set up
# 2) Less complex
# 3) Lower cost because network devices and dedicated servers may not be required
# 4) Can be used for simple tasks such as transferring files and sharing printers
#? CONS:
# 1) No centralized administration
# 2) Not as secure
# 3) Not scalable
# 4) All devices may act as both clients and servers which can slow their performance

.LAN                    #* - Local Area Network. Is a network infrastructure that spans a small geografical area.
#? LANs have specific characteristics:
# 1) LAN interconnect end devices in a limited area such as a home, school, office building, or campus.
# 2) A LAN is usually administered by a single organization or individual. Administrative control is enforsed
# at the network level and governs the security and access control policies.
# 3) LANs provide high-speed bandwidth to internal end devices and intermediary devices, as shown in the figure.

.WAN                    #* - Wide Area Network. Is a network infrastructure that spans a wide geographical area.
# WANs are typically managed by service providers (SPs) or Internet Service Providers (ISPs).
#? WANs have specific characteristics:
# 1) WANs interconnect LANs over wide geographical areas such as between cities, states, provinces, countries, or continents.
# 2) WANs are usually administered by multiple service providers.
# 3) WANs typically provide slower speed links between LANs.

.Internet               #* - Is a worldwide collection of interconnected networks (internetworks, or internet for short).

.Intranet               #* - Term often used to refer to a private connection of LANs and WANs that belongs to an organization.
# An intranet is designed to be accessible by the organization's member, employees, or others with authorization.

.Extranet               #* - An organization may use an extranet to provide secure and safe access to individuals who work for a
# different organization but require access to the organization’s data.
#? Here are some examples of extranets:
# 1) A company that is providing access to outside suppliers and contractors
# 2) A hospital that is providing a booking system to doctors so they can make appointments for their patients
# 3) A local office of education that is providing budget and personnel information to the schools in its district

.End Devices            #* - Is either the source or destination of a message transmitted over the network:
# Desktop Computer | Laptop | Printer | IP Phone | Wireless Tablet | TelePresence Endpoint.

.Intermediary Devices   #* - Wireless Router | LAN Switch | Router | Multilayer Switch | Firewall Appliance.
#? Intermediary network devices perform some or all of these functions:
# 1) Regenerate and retransmit communication signals
# 2) Maintain information about what pathways exist through the network and internetwork
# 3) Notify other devices of errors and communication failures
# 4) Direct data along alternate pathways when there is a link failure
# 5) Classify and direct messages according to priorities
# 6) Permit or deny the flow of data, based on security settings
#? Notice that all intermediary devices perform the function of a repeater.

.Network Media          #* - Communication transmits across a network on media. The media provides the channel
# over which the message travels from source to destination. 
#? Modern networks primarily use three types of media to interconnect devices:
# 1) Metal wires within cables - Data is encoded into electrical impulses
# 2) Glass or plastic fibers within cables (fiber-optic cable) - Data is encoded into pulses of light
# 3) Wireless transmission - Data is encoded via modulation of specific frequencies of electromagnetic waves
# Wireless Media | LAN Media | WAN Media.
#? The 4 main criteria for choosing network media are:
# 1) What is the maximum distance that the media can successfully carry a signal?
# 2) What is the environment in which the media will be installed?
# 3) What is the amount of data and at what speed must it be transmitted?
# 4) What is the cost of the media and installation?

.Network Interface Card (NIC)    #* - Physically connects the end device to the network.

#? Note: the terms port and interface are often used interchangeably.
.Physical Port          #* - A connector or outlet on a networking device where the media connects to an end device
# or another networking device. Router has ports.

.Interface              #* - Specialized ports on a networking device that connect to individual networks. 
# Because routers connect networks, the ports on a router are referred to as network interfaces. Switch has interface.

.Topology diagrams      #* - Are mandatory documentation for anyone working with a network. They provide a visual map
# of how the network is connected.
#? There are two types of topology diagrams: physical and logical.
# Physical topology diagrams - illustrate the physical location of intermediary devices and cable installation.
# Logical topology diagrams - illustrate devices, ports, and the addressing scheme of the network.

.Home and Small Office Internet Connections      #* - There are several common connection options for small office and home office users:
#! Cable - Typically offered by cable television service providers, the internet data signal transmits on the same cable that delivers
# cable television. It provides a high bandwidth, high availability, and an always-on connection to the internet.
#! DSL - Digital Subscriber Lines also provide high bandwidth, high availability, and an always-on connection to the internet. 
# DSL runs over a telephone line. In general, small office and home office users connect using Asymmetrical DSL (ADSL), 
# which means that the download speed is faster than the upload speed.
#! Cellular - Cellular internet access uses a cell phone network to connect. Wherever you can get a cellular signal, you can get cellular
# internet access. Performance is limited by the capabilities of the phone and the cell tower to which it is connected.
#! Satellite - The availability of satellite internet access is a benefit in those areas that would otherwise have no internet connectivity at all. 
# Satellite dishes require a clear line of sight to the satellite.
#! Dial-up Telephone - An inexpensive option that uses any phone line and a modem. The low bandwidth provided by a dial-up modem connection is not sufficient 
# for large data transfer, although it is useful for mobile access while traveling.
#? The choise of connection varies depending on geographical location and service provider availability.

.Businesses Internet Connections     #* Corporate connection options differ from home user options. Businesses may require higher bandwidth,
# dedicated bandwidth, and managed services. Connection options that are available differ depending on the type of service providers located nearby.
#? There are three main connection options for businessess:
#! Dedicated Leased Line - Leased lines are reserved circuits within the service provider’s network that connect geographically separated offices for
# private voice and/or data networking. The circuits are rented at a monthly or yearly rate.
#! Metro Ethernet - This is sometimes known as Ethernet WAN. In this module, we will refer to it as Metro Ethernet. Metro ethernets extend LAN access
# technology into the WAN. Ethernet is a LAN technology you will learn about in a later module.
#! Business DSL - Business DSL is available in various formats. A popular choice is Symmetric Digital Subscriber Line (SDSL) which is similar to the
# consumer version of DSL but provides uploads and downloads at the same high speeds.
#! Satellite - Satellite service can provide a connection when a wired solution is not available.
#? The choice of connection varies depending on geographical location and service provider availability.

.Converged Networks     #* Carry multiple services on one network.

.Four Basic Network Characteristics     #* Fault Tolerance, Scalability, Quality of Service (QoS), Security.

.Fault Tolerance        # Todo: ...

.Scalability            # Todo: ...

.Quality of Service     # Todo: ...

.Network Security       # Todo: ...
