#!/bin/bash
echo $(echo -n $1 | sha256sum) > 0_hash.txt
