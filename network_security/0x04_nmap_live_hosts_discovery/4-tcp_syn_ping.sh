#!/bin/bash
sudo nmap -PS -sn -p22,80,443 "$1"
