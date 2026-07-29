return {
  "Jamsjz/django.nvim",
  ft = "python", -- lazy-load on python files, optional
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
}
