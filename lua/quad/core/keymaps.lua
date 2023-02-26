vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<C-h>", ":nohl<CR>") -- leader nh will clear search highlighted 
keymap.set("n", ";", ":") -- avoid having to press shift+;
keymap.set("n", "x", '"_x') -- don't yank into register when deleting
keymap.set("n", "<up>", "<nop>") -- stop arrow keys from doing anything 
keymap.set("n", "<down>", "<nop>") 
keymap.set("n", "<left>", "<nop>") 
keymap.set("n", "<right>", "<nop>") 
keymap.set("i", "<up>", "<nop>") -- stop arrow keys from doing anything 
keymap.set("i", "<down>", "<nop>") 
keymap.set("i", "<left>", "<nop>") 
keymap.set("i", "<right>", "<nop>") 


-- quick switch buffers
keymap.set("n", "<leader><leader>", "<C-^>")


-- splitting windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window v
keymap.set("n", "<leader>sh", "<C-w>s") -- split hor
keymap.set("n", "<leader>se", "<C-w>=") -- change splits to even
keymap.set("n", "<leader>sx", ":close<CR>") -- close split

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previos tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
