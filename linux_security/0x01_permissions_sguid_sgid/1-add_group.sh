#!/bin/bash
sudo groupadd $1
sudo chown $1 $2
chmod 754 $2
