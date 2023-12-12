#!/bin/bash
sudo nmap -sU -p22,80,443 "$1"
