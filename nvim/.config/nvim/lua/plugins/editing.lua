return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("Comment").setup()
      local api = require("Comment.api")
      local visual_toggle = function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "nx", false)
        api.toggle.linewise(vim.fn.visualmode())
      end
      for _, key in ipairs({ "<C-_>", "<C-/>" }) do
        vim.keymap.set("n", key, api.toggle.linewise.current, { desc = "Toggle comment" })
        vim.keymap.set("x", key, visual_toggle, { desc = "Toggle comment" })
      end
    end,
  },
  { "folke/which-key.nvim", event = "VeryLazy", opts = {} },
  { "christoomey/vim-tmux-navigator", lazy = false },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
      },
    },
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = { ["Find Under"] = "<C-d>", ["Find Subword Under"] = "<C-d>" }
    end,
  },
}
