#!/bin/bash
cat logs.txt | grep POST | awk '{print $1}'
