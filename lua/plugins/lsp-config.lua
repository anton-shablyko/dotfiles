-- Config for the LSP language hightlights
-- to add new languages -> update ensure_installed config
-- here is the full list: https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers

return {
  -- mason installes all our LSPs
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- mason-config bridges teh gap between mason and lspconfig
  -- main feature - insure_installed - makes sure we always have LSPs installed for the languages we need
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "tsserver" },
      })
    end,
  },
  -- keymaps
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })     --lua
      lspconfig.pyright.setup({ capabilities = capabilities })    --python
      lspconfig.rust_analyzer.setup({ capabilities = capabilities }) --rust
      lspconfig.tsserver.setup({ capabilities = capabilities })   --javascipt
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
