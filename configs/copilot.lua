require("copilot").setup {
  panel = {
    enabled = false,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>",
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<A-p>",
      accept_word = "<M-w>",
      accept_line = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    ["."] = true,
  },
  copilot_node_command = "node", -- Node.js version must be > 16.x
  server_opts_overrides = {},
}
