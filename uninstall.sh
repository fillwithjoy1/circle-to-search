echo "Executing uninstall scripts"

cmd device_config put launcher long_press_home_button_to_search false

cmd device_config put launcher long_press_home_button_to_search_mpr false

cmd device_config put launcher press_hold_nav_handle_to_search false

cmd device_config put launcher press_hold_nav_handle_to_search_mpr false

cmd device_config put launcher ENABLE_SETTINGS_OSE_CUSTOMIZATIONS false

cmd device_config put launcher ENABLE_LONG_PRESS_NAV_HANDLE false

cmd device_config put launcher ENABLE_LONG_PRESS_NAV_HANDLE_MPR false

cmd device_config put launcher INVOKE_OMNI_LPH false

cmd device_config put launcher INVOKE_OMNI_LPH_MPR false

cmd device_config set_sync_disabled_for_tests none

echo "Uninstall scripts executed successfully! Reboot to to apply changes"
