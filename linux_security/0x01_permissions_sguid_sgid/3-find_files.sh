#!/bin/bash
find $1 -type f -perm -04000 2>/dev/null
