local installed, gitsigns = pcall(require, "gitsigns")
if not installed then
  return
end

gitsigns.setup()
