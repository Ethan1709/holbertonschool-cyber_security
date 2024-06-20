#!/bin/bash
cat logs.txt | grep POST | tail -1 | awk '{print $11}'
