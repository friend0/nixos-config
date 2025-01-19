return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ---@type snacks.Config

    opts = {
      dashboard = {
        preset = {
          header = tostring(require("ascii/doom").cacodemon),
        },
        formats = {},
        sections = {
          {
            section = "header",
            pane = 1,
          },
          {
            row = 10,
            pane = 2,
            gap = 1,
            { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 2 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
            { section = "startup" },
          },
        },
      },
    },
  },
}
