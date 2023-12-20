#!/bin/bash
if [ "$(awk '{print $1}' "$1")" == "$2"]
then sha256sum "$1"
fi
