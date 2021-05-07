#!/bin/sh
adb install ${1}.apk
adb restore ${1}.ab
