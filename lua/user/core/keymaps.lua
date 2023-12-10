vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Normal mode
keymap("n", "<C-b>", ":NvimTreeToggle<cr>", opts)     -- Open file explorer
keymap("n", "<leader><RIGHT>", ":vsplit<cr>", opts)   -- Split window vertically
keymap("n", "<leader><DOWN>", ":split<cr>", opts)     -- Split window horizontally
keymap("n", "<leader>n", ":nohl<cr>", opts)          -- Clear highlight

-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
-- vim. keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- Visual mode
keymap("v", ">", "<gv", opts)                 -- Indenting in visual mode
keymap("v", "<", ">gv", opts)                 -- Indenting in visual mode
keymap("v", "<A-UP>", ":m .-2<CR>==", opts)   -- Move up a line
keymap("v", "<A-DOWN>", ":m .+1<CR>==", opts) -- Move down a line
keymap("v", "p", '"_dP', opts)                -- Do not reset the yank register
