*** Variables ***
${START_APPIUM_SERVER}    appium
${KILL_ADB}               adb emu kill
${ENABLE_WIFI}            adb shell svc wifi enable
${DISABLE_WIFI}           adb shell svc wifi disable
${ENABLE_DATA}            adb shell svc data enable
${DISABLE_DATA}           adb shell svc data disable


