return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup()

    local langs = { "lua", "vim", "vimdoc", "bash", "python", "javascript", "typescript", "json", "markdown", "markdown_inline" }

    local function ensure_and_start()
      local ft = vim.bo.filetype
      local lang = vim.treesitter.language.get_lang(ft) or ft
      if vim.tbl_contains(ts.get_installed(), lang) then
        pcall(vim.treesitter.start)
      else
        ts.install({ lang }):await(function()
          pcall(vim.treesitter.start)
        end)
      end
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = langs,
      callback = ensure_and_start,
    })
  end,
}
