return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "biome", "typescript-language-server"
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "typescript", "javascript", "golang", "python"
      },
    },
  },{
  "Jamsjz/django.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim", -- optional
    "voldikss/vim-floaterm",         -- optional
  },
  config = function()
    require("django").setup({
      mappings = {
        find_app = "<leader>df",
        run_command = "<leader>dd",
        django_shell = "<leader>dn",
        new_project = "<leader>dp",
      },
    })
  end,
},
{
  "stevearc/conform.nvim",
  event = {"BufReadPre", "BufNewFile"},
  opts = {
    formatters_by_ft = {
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
},
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      -- Force find_files picker to respect your .gitignore
      conf.pickers = {
        find_files = {
          no_ignore = false, -- Changing this to false respects .gitignore
          hidden = true,     -- Keeps hidden dotfiles visible but drops ignored ones
        },
      }
      return conf
    end,
  },
}
