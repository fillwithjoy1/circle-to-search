#!/usr/bin/env sh

# Won't be needed for this
#BUILD_PROP = "/system/build.prop"

sed -i -e 's/ro.system.build.version.sdk=33/ro.system.build.version.sdk=34/g' build.prop