require("noice").setup({
  cmdline = {
    format = {
      search_up = {
        view = "cmdline",
      },
      search_down = {
        view = "cmdline",
      },
    }
  },
  views = {
    cmdline_popup = {
      position = {
        row = 5,
        col = "50%",
      },
      size = {
        width = 60,
        height = "auto",
      },
    },
    popupmenu = {
      relative = "editor",
      position = {
        row = 8,
        col = "50%",
      },
      size = {
        width = 60,
        height = 10,
      },
      border = {
        style = "rounded",
        padding = { 0, 1 },
      },
      win_options = {
        winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
      },
    },
  },
  lsp = {
    progress = {
      enabled = false,
    },
    hover = {
      enabled = false,
    },
    signature = {
      enabled = false,
    },
  },
})
require("notify").setup({
  background_colour = "#191724",
})
