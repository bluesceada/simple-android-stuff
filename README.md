Get list of packages:
adb-list-packages.sh

Find your package name there, for example "com.appname"

Backup (please use password "ab" on the phone):
adb backup appname.ab com.appname

Get apk:
abe-get-apk.sh appname.ab

--- on other phone connected:

Restore apk:
adb install appname.apk

Restore appdata:
adb restore appname.ab

