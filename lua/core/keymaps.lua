local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- :terminal shell
vim.opt.shell = "pwsh"

-- nvimtree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opts)

-- splits
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", opts)

-- resize split
vim.keymap.set("n", "<Left>", ":vertical resize +1<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize -1<CR>", opts)
vim.keymap.set("n", "<Up>", ":resize -1<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +1<CR>", opts)

-- make split
