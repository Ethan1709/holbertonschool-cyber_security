#!/bin/bash
find $1 -type f -perm -04000 -exec ls -l {} \; 2>/dev/null
