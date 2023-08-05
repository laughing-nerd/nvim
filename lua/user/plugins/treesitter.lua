local installed, treesitter = pcall(require, "nvim-treesitter.configs")
if not installed then
  return
end

treesitter.setup({
  ensure_installed = { "html", "css", "javascript", "typescript", "tsx", "python", "java", "c", "go", "cpp", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
})
