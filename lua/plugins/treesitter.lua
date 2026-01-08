-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "lua",
      "python",
      "javascript",
      "html",
      "css",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
