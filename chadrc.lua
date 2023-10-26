---@type ChadrcConfig
local M = {}
vim.o.scrolloff = 13
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest",
  theme_toggle = { "everforest", "rosepine" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    overriden_modules = nil,
  },
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = false,
    overriden_modules = function (modules)
      modules[4] = (function ()
        return "Thao "
      end)()
    end
  },
  nvdash = {
    load_on_startup = true,

    -- header = {
    --   "           ▄ ▄                   ",
    --   "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    --   "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    --   "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    --   "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    --   "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    --   "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    --   "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    --   "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    -- },
    header = {
      "─────────────────────────────────────────────────────────────",
      "─██████████████─██████──██████─██████████████─██████████████─",
      "─██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─",
      "─██████░░██████─██░░██──██░░██─██░░██████░░██─██░░██████░░██─",
      "─────██░░██─────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██─",
      "─────██░░██─────██░░██████░░██─██░░██████░░██─██░░██──██░░██─",
      "─────██░░██─────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─",
      "─────██░░██─────██░░██████░░██─██░░██████░░██─██░░██──██░░██─",
      "─────██░░██─────██░░██──██░░██─██░░██──██░░██─██░░██──██░░██─",
      "─────██░░██─────██░░██──██░░██─██░░██──██░░██─██░░██████░░██─",
      "─────██░░██─────██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░██─",
      "─────██████─────██████──██████─██████──██████─██████████████─",
      "─────────────────────────────────────────────────────────────",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      -- { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      -- { "  Bookmarks", "Spc m a", "Telescope marks" },
      -- { "  Themes", "Spc t h", "Telescope themes" },
      -- { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
