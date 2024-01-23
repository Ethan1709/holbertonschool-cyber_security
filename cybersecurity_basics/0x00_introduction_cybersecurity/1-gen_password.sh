#!/bin/bash
tr -dc '[:alnum:]' < /dev/unrandom | head -c $1
