-- this plugin is responsible for linting (Black)
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua, -- lua
        null_ls.builtins.formatting.prettier,-- js
        null_ls.builtins.formatting.black, -- python
        null_ls.builtins.formatting.isort, -- python
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

-- use :Mason to install linters
-- / find linter/formatter - and press "i" to install it
