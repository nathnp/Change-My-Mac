#!/bin/bash

interface="wlp170s0"
echo "Pick an option"
echo "r = Random, b = Built in"
read choice

if [ "$choice" == "r" ]; then
  nmcli device set $interface managed false
  sudo macchanger -r $interface
  nmcli device set $interface managed true
fi
if [ "$choice" == "b" ]; then
  nmcli device set $interface managed false
  sudo macchanger -p $interface
  nmcli device set $interface managed true
  echo "\nNote: You might have to power cycle your NIC to re-join the network\n"
fi
