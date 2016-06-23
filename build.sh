#!/bin/sh
## Ricin mini build macro.

autovala update
cd build
cmake .. && make -j2 && ./src/Ricin
