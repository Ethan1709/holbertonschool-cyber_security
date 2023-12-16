#!/bin/bash
sudo nmap -PU -p22,80,443 "$1"
