return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- load before other plugins
  config = function()
    vim.o.termguicolors = true
    vim.cmd.colorscheme("gruvbox")
  end,
}
