local installed, telescope = pcall(require, "telescope")
if not installed then
  return
end

local actions_installed, actions = pcall(require, "telescope.actions")
if not actions_installed then
  return
end

telescope.setup()

