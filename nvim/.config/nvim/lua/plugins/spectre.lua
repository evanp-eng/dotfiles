return {
  "nvim-pack/nvim-spectre",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Spectre",
  keys = {
    { "<leader>sr", function() require("spectre").toggle() end, desc = "Search & Replace (project)" },
    { "<leader>sw", function() require("spectre").open_visual({ select_word = true }) end, desc = "Search word under cursor" },
  },
}
