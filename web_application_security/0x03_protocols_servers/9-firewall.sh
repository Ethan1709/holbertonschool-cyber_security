#!/bin/bash
sudo iptables -A INPUT -p tcp --dport ssh -j ACCEPT -j DROP
hello
