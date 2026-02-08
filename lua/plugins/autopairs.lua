return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",  -- lazy-load when you start inserting
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true,       -- integrates with Treesitter
      enable_moveright = true,
      disable_filetype = { "TelescopePrompt", "vim" },
    })
  end,
}
