# circle-to-search
- Get Google's Circle to Search feature on your device!
- Note 1: This works well on Pixel devices running Android 14
- Note 2: You'll need to spoof the Google app to tell that you have a "Pixel 8" device. This will be explored more in the guide.
- Note 3: Assistant features may be disabled after flashing. This is normal, you need to connect to Wi-Fi to finish setting up (see [#2](https://github.com/fillwithjoy1/circle-to-search/issues/2))

# Circle to Search in Action!
https://github.com/fillwithjoy1/circle-to-search/assets/29514446/88fb1273-16f4-406b-8852-82456fd3e2ae

# Guide
1. Go to [Releases](https://github.com/fillwithjoy1/circle-to-search/releases/tag/Release) and download the ZIP file
2. Flash the Release ZIP you installed into Magisk
3. Reboot
4. Open Settings > Display > Gesture Navigation and see if you have "Hold handle to search" on. Screenshot below ![share_305687892272846497](https://github.com/fillwithjoy1/circle-to-search/assets/29514446/4fbf74fa-e66c-4c7e-b036-ef783fecd26e)

## Part 2 - Spoofing your device as Pixel 8
For this part, you'll need to spoof your device as the Pixel 8 app. I personally have another project that does that over [there](https://github.com/fillwithjoy1/circle-to-search-spoofer), follow the instructions over there and you'll be fine :)

Note: If you have your own spoofing solution, you'll need to trick the Google Search app (com.google.android.quicksearchbox)

# For ROM Developers

Checklist:
1. Use Pixel Launcher as the default launcher. This should persist across recent apps as well (probably)
2. Run shell commands/change flags in Pixel launcher to verify that Circle to Search appears
3. Spoof the Google app to think you have a Pixel 6 or above with the use of props

### Using Pixel Launcher as the default laucher
The circle to search feature relies on Pixel Launcher being the primary home screen provider that also **controls your recent menu**. If you can select text and images from the recents menu, you are likely good to go.

### Getting Circle to Search appear inside the settings
In addition to using the **official** Pixel Launcher, some props will need to be set for the Pixel Launcher as well. How you implement this is totally up to you (there's also shell commands attached if that's more helpful)

The flags you'll need to turn on include (you can also get it from [here](https://github.com/fillwithjoy1/circle-to-search/blob/main/customize.sh), that link includes all the shell commands required to execute it, if you prefer running shell commands):
1. long_press_home_button_to_search
2. long_press_home_button_to_search_mpr
3. press_hold_nav_handle_to_search
4. press_hold_nav_handle_to_search_mpr
5. ENABLE_SETTINGS_OSE_CUSTOMIZATIONS
6. ENABLE_LONG_PRESS_NAV_HANDLE
7. ENABLE_LONG_PRESS_NAV_HANDLE_MPR
8. INVOKE_OMNI_LPH
9. INVOKE_OMNI_LPH_MPR
10. Run this command to disable google from adjusting the flags automatically server-side  `cmd device_config set_sync_disabled_for_tests persistent`
Go to Display > Navigation Mode > Gesture Navigation, and you should see Circle to Search. This means that the Pixel Launcher is ready to work with Circle to Search

### Tricking the Google app to allow Circle to Search
Finally, you need to trick the Google app into thinking you have a Pixel 6+ device. You can use something like [Pixel Props](https://github.com/Pixel-Props), however Google Apps may break (Pixel Camera will definitely break if you have a Pixel). What I've done in my setup is use LSPosed to trick _just the google app itself_ (com.google.android.googlequicksearchbox) through [here](https://github.com/fillwithjoy1/circle-to-search-spoofer)
_Note: Galaxy S23/24 Ultras do have Circle to Search available, if that helps you_

### Bonus: Testing if Circle to Search is actually working
If you can sideload the Pixel Tips app and spoof it to a Pixel 6 or above, you should find a Circle to Search demo to test it's working. Also the Google App greets you with how to use the feature. But of course, just pressing the home button is all you need ;)

