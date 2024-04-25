#!/bin/bash
sudo nmap -sA --reason --min-rate 1000 -p$2 $1
