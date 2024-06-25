#!/bin/bash
nmap -sV -O --script banner ssl-enum-ciphers default smb-enum-domains -oN vulnerability_scan_results.txt $1
