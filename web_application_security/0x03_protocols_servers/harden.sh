#!/bin/bash
find / -xdev -type d -perm o+w -exec chmod o-w {} \;
