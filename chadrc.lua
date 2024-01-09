---@type ChadrcConfig
local M = {}
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "rosepine" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    overriden_modules = function(modules)
      modules[10] = (function()
        return ""
      end)()
      modules[12] = (function()
        return ""
      end)()
      modules[13] = (function()
        local dir_name = "%#St_cwd# 󰉖 " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
        return (vim.o.columns > 100 and dir_name) or ""
      end)()
    end,
  },
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = false,
    overriden_modules = function(modules)
      modules[4] = (function()
        return "Thao "
      end)()
    end,
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
