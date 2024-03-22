#!/bin/bash
echo $1 | openssl dgst -sha512 > 3-hash.txt
