#!/bin/bash
find -type -f $1 -mtime -1 \( -perm -4000 -o -perm -2000 \)
