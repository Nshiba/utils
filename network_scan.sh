#!/bin/bash

echo "How scan network ->"
read network
sudo arp-scan -I $network -l
