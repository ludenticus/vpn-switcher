
#!/bin/bash

# Script for automatic change of saved VPN connections under Linux
# Created by Eduardo Villegas
# GNU General Public License v3.0
# The latest version of this script is available at:
# https://github.com/ludenticus/vpn-change


test=$(nmcli con show --active | grep -c vpn)

# Possible results:
# 0 - No VPN connected. Start one
# 1 - VPN connected. Disable running connection and start a new one, beginning with the earliest used

case $test in

   "0")

      nmcli con up `nmcli --mode tabular --fields name,type,timestamp con | grep -E "\s+vpn\s+" | sort -k3 | head -n1 | awk '{ print $1}'`      

      notify-send "No previous VPN was detected" "Connecting to `nmcli con show --active | grep vpn | awk '{print $1}'`"

   ;;

   "1")

      nmcli con down id `nmcli con show --active | grep vpn | awk '{print $1}'`

      nmcli con up `nmcli --mode tabular --fields name,type,timestamp con | grep -E "\s+vpn\s+" | sort -k3 | head -n1 | awk '{ print $1}'`

      notify-send "Starting a new VPN" "Connecting to `nmcli con show --active | grep vpn | awk '{print $1}'`"

   ;;

esac

exit

done
