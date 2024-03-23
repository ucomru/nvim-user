return {
  -- colorsheme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- surround
  { "kylechui/nvim-surround", version = "*", event = "VeryLazy",
    config = function() require("nvim-surround").setup({ }) end },
}
