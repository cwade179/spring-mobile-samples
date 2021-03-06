#!/bin/sh
cd $(dirname $0)

mvn clean package
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf target

./gradlew clean build
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf build
