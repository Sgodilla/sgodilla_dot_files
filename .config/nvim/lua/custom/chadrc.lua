---@type ChadrcConfig
local M = {}


M.ui = {
  theme = 'catppuccin',  -- or 'tokyonight' if you prefer
  theme_toggle = { "catppuccin", "catppuccin" },
  hl_override = {
    -- General editor transparency
    Normal = { bg = "none" },
    NormalFloat = { bg = "none" },

    -- NvimTree transparency
    NvimTreeNormal = { bg = "none" },
    NvimTreeVertSplit = { bg = "none" },

    -- Status line and tabline transparency
    StatusLine = { bg = "none" },
    StatusLineNC = { bg = "none" },
    WinBar = { bg = "none" },
    TabLine = { bg = "none" },
    TabLineFill = { bg = "none" },
    TabLineSel = { bg = "none" },

    -- Tabufline transparency
    TabufLine = { bg = "none" },
    TabufLineFill = { bg = "none" },
    TabufLineSel = { bg = "none" },

    -- Telescope transparency
    TelescopeNormal = { bg = "none" },
    TelescopeBorder = { bg = "none" },
    TelescopePromptNormal = { bg = "none" },
    TelescopePromptBorder = { bg = "none" },
    TelescopeResultsNormal = { bg = "none" },
    TelescopeResultsBorder = { bg = "none" },
    TelescopePreviewNormal = { bg = "none" },
    TelescopePreviewBorder = { bg = "none" },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
