echo "Executing commands"

# Execute commands needed to activate Circle to Search
cmd device_config put launcher long_press_home_button_to_search true

cmd device_config put launcher long_press_home_button_to_search_mpr true

cmd device_config put launcher press_hold_nav_handle_to_search true

cmd device_config put launcher press_hold_nav_handle_to_search_mpr true

cmd device_config put launcher ENABLE_SETTINGS_OSE_CUSTOMIZATIONS true

cmd device_config put launcher ENABLE_LONG_PRESS_NAV_HANDLE true

cmd device_config put launcher ENABLE_LONG_PRESS_NAV_HANDLE_MPR true

cmd device_config put launcher INVOKE_OMNI_LPH true

cmd device_config put launcher INVOKE_OMNI_LPH_MPR true

cmd device_config set_sync_disabled_for_tests persistent

echo "Commands executed successfully! Reboot to to apply changes"