#!/bin/sh 

for i in {10..35}; do echo $i; bench "python3 standalone.py $i"; done