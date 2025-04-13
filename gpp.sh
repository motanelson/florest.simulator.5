#!/usr/bin/sh 
printf "\033c\033[43;30m\ndownloa g++"
wget "http://www.netgull.com/gcc/releases/gcc-4.0.0/gcc-g%2B%2B-4.0.0.tar.gz" 
gzip -d 'gcc-g++-4.0.0.tar.gz'
tar --extract -f 'gcc-g++-4.0.0.tar'
cd gcc-g++-4.0.0
