local wezterm = require('wezterm')
local act = wezterm.action
local module = {}

function module.apply_config(config)
  config.leader = { key = 'b', mods = 'CTRL', timeout_millisecondss = 1000 }

  config.keys = {
    -- ============================================
    -- Window
    -- ============================================
    { key = 'c', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'q', mods = 'LEADER', action = act.CloseCurrentTab { confirm = false } },
    { key = 'w', mods = 'LEADER', action = act.ShowTabNavigator },
    { key = 'n', mods = 'LEADER|CTRL', action = act.ActivateTabRelative(1) },
    { key = 'p', mods = 'LEADER|CTRL', action = act.ActivateTabRelative(-1) },

    {
      key = 'o',
      mods = 'LEADER',
      action = act.PromptInputLine {
        description = 'Enter new name for tab',
        action = wezterm.action_callback(function(window, pane, line)
          if line then
            window:active_tab():set_title(line)
          end
        end),
      },
    },

    -- ============================================
    -- Pane
    -- ============================================
    { key = '-', mods = 'LEADER', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = '|', mods = 'LEADER|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },

    { key = 'x', mods = 'LEADER', action = act.CloseCurrentPane { confirm = false } },
    { key = 'm', mods = 'LEADER', action = act.TogglePaneZoomState },
    { key = 'e', mods = 'LEADER', action = act.PaneSelect { mode = 'MoveToNewTab' } },

    -- Switching pane layout
    { key = 'Space', mods = 'LEADER', action = act.PaneSelect },

    -- Move pane
    { key = 'h', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Left' },
    { key = 'j', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Down' },
    { key = 'k', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Up' },
    { key = 'l', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Right' },

    -- Resize pane
    { key = 'H', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize { 'Left', 5 } },
    { key = 'J', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize { 'Down', 5 } },
    { key = 'K', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize { 'Up', 5 } },
    { key = 'L', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize { 'Right', 5 } },

    -- ============================================
    -- yanking
    -- ============================================
    { key = 'y', mods = 'LEADER', action = act.ActivateCopyMode },
    { key = 'p', mods = 'LEADER', action = act.PasteFrom 'Clipboard' },

    -- ============================================
    -- Utils
    -- ============================================
    { key = ':', mods = 'LEADER|SHIFT', action = act.ActivateCommandPalette },
    { key = 'r', mods = 'LEADER', action = act.ReloadConfiguration },
    { key = 'i', mods = 'LEADER', action = act.ShowDebugOverlay },
    { key = '?', mods = 'LEADER|SHIFT', action = act.ShowLauncher },
    {
      key = 't',
      mods = 'LEADER',
      action = act.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' }
    },
  }


    -- Mouse
    config.mouse_bindings = {
      -- Open URL with Ctrl-<click>
      {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.OpenLinkAtMouseCursor,
      },
    }
end

return module
