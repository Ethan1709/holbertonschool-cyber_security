#!/bin/bash
find $1 -type f -perm -02000 2>/dev/null
