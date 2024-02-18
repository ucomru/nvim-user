return {

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  { "kylechui/nvim-surround", version = "*", event = "VeryLazy",
    config = function() require("nvim-surround").setup({ }) end },

  -- { "alexghergh/nvim-tmux-navigation" },

}
