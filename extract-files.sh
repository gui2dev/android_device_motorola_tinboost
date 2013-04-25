#!/bin/sh

VENDOR=motorola
DEVICE=tinboost

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | cut -f1 -d '#' | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    echo ~/android-sdk-linux/platform-tools/adb pull /system/$FILE $BASE/$FILE
    ~/android-sdk-linux/platform-tools/adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
