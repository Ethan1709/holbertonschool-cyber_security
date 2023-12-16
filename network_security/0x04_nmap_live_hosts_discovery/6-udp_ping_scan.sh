#!/bin/bash
sudo nmap -PU -sn -p22,80,443 "$1"
