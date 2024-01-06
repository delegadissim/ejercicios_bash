#!/bin/bash
last -i | awk '{print $1, $3}' | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}"
# Un altra solució
#last -i | awk '{print $1, $3}' | grep -E "([0-255]\.){3}[0-255]"

