#!/bin/bash

export LD_LIBRARY_PATH=./sc-machine/bin
if [ ! -d "../kb.bin" ]; then
    mkdir ../kb.bin
fi

cd ../ims.ostis.kb
python3 prepare_kb.py
cd ..
sc-machine/bin/sc-builder -f -c -i repo.path -o kb.bin -s config/sc-web.ini -e sc-machine/bin/extensions


