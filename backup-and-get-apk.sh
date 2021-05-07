#!/bin/sh
# argument $1 = specific app name
# argument $2 = normal app name (for apk and ab)
ABE_BINARY=~/bin/abe.jar
ABE_PASSWD="ab"
adb backup -apk -f ${2}.ab $1
java -jar ${ABE_BINARY} unpack ${2}.ab ${2}_tmp.tar $ABE_PASSWD
tar -xf ${2}_tmp.tar --wildcards '*.apk' --strip-components=3
rm ${2}_tmp.tar
mv base.apk ${2}.apk
