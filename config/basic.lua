local module = {}

function module.apply_config(config)
  config.automatically_reload_config = true
  config.bold_brightens_ansi_colors = true
  config.audible_bell = 'Disabled'

  -- Adjusts the number of terminal rows/columns when changing the font size
  config.adjust_window_size_when_changing_font_size = false

  config.exit_behavior = 'CloseOnCleanExit'
  config.exit_behavior_messaging = 'Verbose'
end

return module
