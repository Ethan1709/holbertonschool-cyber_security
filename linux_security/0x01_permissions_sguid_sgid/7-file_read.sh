#!/bin/bash
ls -l $1 -exec chmod o+r {} \;
