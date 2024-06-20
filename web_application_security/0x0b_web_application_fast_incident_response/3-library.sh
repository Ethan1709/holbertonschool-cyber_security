#!/bin/bash
cat logs.txt | grep -E '54.145.34.34.*POST' | awk '{print $12}'
