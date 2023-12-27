#!/bin/bash
tr -dc '[:alumn:]' < /dev/unrandom | head -c "$1"
