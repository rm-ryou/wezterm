local wezterm = require('wezterm')
local module = {}

function module.apply_config(config)
  config.font = wezterm.font({
    family = 'Hack Nerd Font Mono',
    weight = 'Medium',
  })

  config.font_size = 12

  -- リガチャの有効化
  config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }
end

return module
