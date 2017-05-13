# vpn-switcher

## Description

Script for switching VPN connections under Linux. In order to alternate VPNs, it will connect to the earliest used VPN. 


## Who can benefit from this script?

This small script will be useful in case you:
 
1. Have already configured a number of VPN connections

2. Need to switch between them, avoiding repetitions

3. Want to  stay off the hassle of clicking each time Turn off VPN > Turn on next VPN



## Requirements

1. nmcli

2. Saved and working VPN connections


## Installation

1. Download this script

````
wget https://github.com/ludenticus/vpn-switcher/blob/master/VPN_switcher.sh
````

2. Make it executable

````
chmod +x VPN_switcher.sh
````

3. Create a shortcut

  *In Gnome*
  
  Settings > Keyboard > Add custom shortcut

![Gnome · Create shortcut](https://github.com/ludenticus/vpn-switcher/blob/master/Gnome_Shortcut.jpg)
