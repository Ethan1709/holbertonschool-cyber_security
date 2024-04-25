#!/bin/bash
sudo nmap -sf -sN -sX -sA -sS -oN custom_scan.txt -p$2 $1
