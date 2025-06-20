return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "json", "javascript", "typescript", "tsx", "yaml", "html", "css",
        "prisma", "markdown", "markdown_inline", "svelte", "graphql",
        "bash", "lua", "vim", "dockerfile", "gitignore", "query",
      },
    })
  end,
}
