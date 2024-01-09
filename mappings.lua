---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Mapping Alt + Up to line up
    ["<A-k>"] = { ":m .-2<CR>==", "move line up" },
    -- Mapping Alt + Down to line Down
    ["<A-j>"] = { ":m .+1<CR>==", "move line up" },
    -- Mapping leader + t to open Telescope
    ["<leader>t"] = { "<cmd>Telescope<cr>", "open Telescope" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    -- Mapping Alt + Up to line up
    ["<C-k>"] = { ":m '<-2<CR>gv=gv", "move line up" },
    -- Mapping Alt + Down to line Down
    ["<C-j>"] = { ":m '>+1<CR>gv=gv", "move line up" },
  },
}

-- more keybinds!

return M
