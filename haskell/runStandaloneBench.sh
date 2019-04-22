#!/bin/sh 

for i in {10..35}; do echo $i; bench "./runnableBench $i"; done
