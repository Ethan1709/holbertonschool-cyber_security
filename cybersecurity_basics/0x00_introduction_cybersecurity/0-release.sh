#!/bin/bash
cat /etc/*-release | grep "^ID=" | sed 's/ID=//'
