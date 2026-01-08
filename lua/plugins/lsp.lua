return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("clangd", {
      cmd = { "clangd", "--background-index" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
      root_dir = vim.fs.root(0, {
        "compile_commands.json",
        "compile_flags.txt",
        "CMakeLists.txt",
        ".git",
      }),
      capabilities = capabilities,
    })

    vim.lsp.enable("clangd")
  end,
}
