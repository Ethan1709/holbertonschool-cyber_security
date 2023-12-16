#!/bin/bash
sudo nmap -PA -sn -p22,80,443 "$1"
