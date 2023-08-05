local installed, autopairs = pcall(require, "nvim-treesitter")
if not installed then
  return
end

autopairs.setup({
  check_ts = true,
  ts_config = {
    lua = {"string"},
    javascript = {"template_string"},
    java = false
  },
})


