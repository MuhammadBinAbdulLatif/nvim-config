return {
  -- Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason integration with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },

  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      -- Setup servers
     lspconfig.ts_ls.setup({ capabilities = capabilities, filetypes = { "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",} })       -- JS/TS
      lspconfig.tailwindcss.setup({ capabilities = capabilities }) -- TailwindCSS
      lspconfig.gopls.setup({ capabilities = capabilities })       -- Go
      lspconfig.pyright.setup({ capabilities = capabilities })     -- Python
      lspconfig.prisma.setup({ capabilities = capabilities })    -- Prisma
      lspconfig.lua_ls.setup({ capabilities = capabilities })      -- Lua
      lspconfig.html.setup({ capabilities = capabilities })        -- HTML
      lspconfig.buf_ls.setup({capabilities = capabilities})

      -- Keymaps
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
  },
}

