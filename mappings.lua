---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Mapping Alt + Up to line up
    ["<A-Up>"] = { ":m .-2<CR>==", "move line up" },
    -- Mapping Alt + Down to line Down
    ["<A-Down>"] = { ":m .+1<CR>==", "move line up" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    -- Mapping Alt + Up to line up
    ["<A-Up>"] = { ":m '<-2<CR>gv=gv", "move line up" },
    -- Mapping Alt + Down to line Down
    ["<A-Down>"] = { ":m '>+1<CR>gv=gv", "move line up" },
  },
}

-- more keybinds!

return M
