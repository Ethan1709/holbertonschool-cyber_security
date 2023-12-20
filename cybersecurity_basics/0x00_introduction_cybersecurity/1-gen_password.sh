#!/bin/bash
tr -dc '[:graph:]' < /dev/unrandom | head -c $1
