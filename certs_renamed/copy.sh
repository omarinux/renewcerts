#!/bin/bash
rm -rf web*
rm -rf *.crt
cp -rp ../certs/* .
ls -v *.pem | cat -n | while read n f; do mv -n "$f" "$n.crt"; done
rm -rf web*.*.crt
for i in `ls *.crt`; do echo "Processing $i"; openssl x509 -noout -subject -in $i; done
