#!/bin/bash
whois "$1" | awk '/^Registrant|^Tech|^Admin/ {gsub(/:/, ","); print}' > "$1".csv
