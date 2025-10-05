local wezterm = require('wezterm')
local config = wezterm.config_builder()

require('config.main').apply_config(config)

return config
