#!/bin/sh 

for i in {10..35}; do echo $i; bench "java -jar out/artifacts/WAidI_Java_jar/WAidI-Java.jar $i"; done
