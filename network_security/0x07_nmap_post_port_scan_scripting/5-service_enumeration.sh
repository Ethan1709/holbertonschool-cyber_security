#!/bin/bash
nmap -sV -A --script banner ssl-enum-ciphers default smb-enum-domains -oN vulnerability_scan_results.txt $1
