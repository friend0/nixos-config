return {
  {
    "nvimtools/none-ls.nvim", -- Community-maintained replacement for null-ls
    opts = function(_, opts)
      local nls = require("null-ls") -- 'none-ls' uses 'null-ls' internally
      opts.sources = vim.list_extend(opts.sources or {}, {
        -- Add formatters and linters
        nls.builtins.formatting.prettier, -- Prettier for formatting
        nls.builtins.formatting.black, -- Black for Python formatting
        nls.builtins.formatting.latexindent.with({
          command = "latexindent", -- Ensure this is in your PATH
          args = { "-l", "-m" }, -- Use local `.latexindent.yaml` config
          extra_filetypes = { "tex" },
        }),
      })
    end,
  },
}
