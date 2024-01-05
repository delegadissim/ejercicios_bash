#!/bin/bash
ls -la $1 | awk '{print substr($1, 1, 1), $NF}' | tail -n +4

