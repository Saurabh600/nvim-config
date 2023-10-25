local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- mapping <Esc> -> <C-j>
keymap({ "i", "v" }, "<C-j>", "<Esc>", opts)
keymap("n", "<leader>cc", "<cmd>q!<cr>", opts)

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- NvimTree keymap
keymap("n", "<leader>nn", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>nf", "<cmd>NvimTreeFindFile<cr>", opts)

-- Telescope keymap
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
