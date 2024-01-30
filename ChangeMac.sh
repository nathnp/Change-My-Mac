#!/bin/bash

interface="wlp170s0"
echo "Pick an option"
echo "r = Random, p = Built in"
read choice

if [ "$choice" == "r" ]; then
  nmcli device set $interface managed false
  sudo macchanger -r $interface
  nmcli device set $interface managed true
fi
if [ "$choice" == "p" ]; then
  nmcli device set $interface managed false
  sudo macchanger -p $interface
  nmcli device set $interface managed true
fi
