#!/usr/bin/env bash

rm -r test

if [ -z $1 ]
then
  meteor create --bare test
else
  meteor create --release "$1" --bare test
fi

cd test
MONGO_URL= METEOR_PACKAGE_DIRS="../" meteor test-packages --once --driver-package meteortesting:mocha ../
