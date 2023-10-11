
return{
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = { "html", "css", "javascript", "typescript", "tsx", "python", "java", "c", "go", "cpp", "lua", "vim", "vimdoc", "query", "lua" },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      context_commentstring = { enable = true },
    })
   end
 }
