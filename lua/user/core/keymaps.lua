vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

-- Normal mode
keymap("n", "<C-b>", ":NvimTreeToggle<cr>", opts)     -- Open file explorer
keymap("n", "<leader><RIGHT>", ":vsplit<cr>", opts)   -- Split window vertically
keymap("n", "<leader><DOWN>", ":split<cr>", opts)     -- Split window horizontally
keymap("n", "<leader>nh", ":nohl<cr>", opts)          -- Clear highlight

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Visual mode
keymap("v", ">", "<gv", opts)                 -- Indenting in visual mode
keymap("v", "<", ">gv", opts)                 -- Indenting in visual mode
keymap("v", "<A-UP>", ":m .-2<CR>==", opts)   -- Move up a line
keymap("v", "<A-DOWN>", ":m .+1<CR>==", opts) -- Move down a line
keymap("v", "p", '"_dP', opts)                -- Do not reset the yank register

