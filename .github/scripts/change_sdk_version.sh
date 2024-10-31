mount -o rw,remount /system
BUILD_PROP="/system/build.prop"

if [ -e $BUILD_PROP ]
then
  if grep "ro.system.build.version.sdk=34" $BUILD_PROP
  then
    # TODO: Need to install Pixel Launcher 14 into the system
    echo "You are done! Install Pixel Launcher manually to finish installation"
  else
    sed -i -e 's/ro.system.build.version.sdk=33/ro.system.build.version.sdk=34/g' $BUILD_PROP
    echo "Updated ro.system.build.version to 34! Be careful out there!"
  fi
else
  echo "Can't find build.prop, aborting!"
fi

mount -o ro,remount /system