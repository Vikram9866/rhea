#!/bin/sh
set -e
# check to see if iverilog folder is empty
if [ ! -d "$HOME/iverilog/driver" ]; then
    git clone git://github.com/steveicarus/iverilog.git
    cd iverilog
    sh autoconf.sh
    ./configure --prefix=$HOME/iverilog
    make
    make check
    make install
else
  echo 'Using cached directory.';
fi
