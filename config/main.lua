local basic = require('config.basic')
local fonts = require('config.fonts')
local keymap = require('config.keymap')
local appearance = require('config.appearance')
local module = {}

function module.apply_config(config)
  basic.apply_config(config)
  fonts.apply_config(config)
  keymap.apply_config(config)
  appearance.apply_config(config)
end

return module
