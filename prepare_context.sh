#!/bin/bash

echo "REMEMBER, MUST RUN AS LOCAL USER"

pushd nrg-improc
        echo git pull
        git pull
popd

echo chmod -R o+rX `pwd`
chmod -R o+rX `pwd`

