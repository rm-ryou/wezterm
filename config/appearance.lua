local module = {}

function module.apply_config(config)
  -- Color scheme
  config.color_scheme = 'Tokyo Night (Gogh)'

  -- Window
  -- config.window_background_opacity = 0.95
  config.window_background_opacity = 0.5
  config.macos_window_background_blur = 20
  config.window_decorations = 'RESIZE'
  config.enable_scroll_bar = false
  config.window_close_confirmation = 'NeverPrompt'

  config.foreground_text_hsb = {
    -- This increases brightness by 50%
    hue = 1.0,
    saturation = 1.0,
    brightness = 1.0,
  }

  config.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.6,
  }

  -- Cursor
  config.default_cursor_style = 'SteadyBlock'

  -- Mouse
  config.alternate_buffer_wheel_scroll_speed = 1
  config.bypass_mouse_reporting_modifiers = 'SHIFT'
  config.disable_default_mouse_bindings = false
  config.hide_mouse_cursor_when_typing = true

  -- Tab bar
  config.enable_tab_bar = true
  config.use_fancy_tab_bar = false
  config.tab_bar_at_bottom = false
  config.hide_tab_bar_if_only_one_tab = false
  config.tab_max_width = 30
  config.show_tab_index_in_tab_bar = false
  config.show_new_tab_button_in_tab_bar = false

  config.colors = {
    tab_bar = {
      background = '#1a1b26',
      active_tab = {
        bg_color = '#7aa2f7',
        fg_color = '#1a1b26',
        intensity = 'Bold',
      },
      inactive_tab = {
        bg_color = '#3b4261',
        fg_color = '#787c99',
      },
      inactive_tab_hover = {
        bg_color = '#444b6a',
        fg_color = '#c0caf5',
      },
      new_tab = {
        bg_color = '#1a1b26',
        fg_color = '#7aa2f7',
      },
      new_tab_hover = {
        bg_color = '#3b4261',
        fg_color = '#7aa2f7',
      },
    },
  }
end

return module
