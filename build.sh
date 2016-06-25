#!/bin/sh
## Ricin mini build macro.

if [ "$1" == "update" ]; then
  autovala update
fi

cd build
cmake .. && make -j2 && ./src/Ricin
