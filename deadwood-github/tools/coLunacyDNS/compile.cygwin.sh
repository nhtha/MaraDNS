#!/bin/sh

# With only one file, I will not bother with a Makefile

cd ../../lunacy/
make 
cd ../tools/coLunacyDNS/
gcc -DCYGWIN -g -c -o coLunacyDNS.o coLunacyDNS.c
gcc -g -o coLunacyDNS coLunacyDNS.o ../../lunacy/liblua.a -lm
