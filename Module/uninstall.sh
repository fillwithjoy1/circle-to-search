mount -o rw,remount /system
BUILD_PROP="/system/build.prop"

if [ -e $BUILD_PROP ]
then
  if grep "ro.system.build.version.sdk=34" $BUILD_PROP
  then
    sed -i -e 's/ro.system.build.version.sdk=34/ro.system.build.version.sdk=33/g' $BUILD_PROP
    echo "Reverted to SDK 33!"
  else
    echo "Already at SDK 33, nothing changed!"
  fi
else
  echo "Can't find build.prop, aborting!"
fi

mount -o ro,remount /system
exit