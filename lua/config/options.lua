vim.g.mapleader = " "

local opt = vim.opt

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 粘贴到windows不乱码
opt.clipboard = "unnamedplus"
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.ignorecase = true
opt.smartcase = true
opt.colorcolumn = "80"
opt.cursorline = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cmdheight = 2
opt.autoread = true
opt.wrap = false
opt.whichwrap = "<,>,[,]"
opt.mouse = "a"
opt.writebackup = false
opt.swapfile = false
opt.updatetime = 300
opt.timeoutlen = 400
opt.splitbelow = true
opt.splitright = true
opt.completeopt = "menu,menuone,noselect,noinsert"
opt.background = "dark"
opt.termguicolors = true
opt.list = true
opt.listchars = "space:."
opt.wildmenu = true
opt.pumheight = 10
opt.showtabline = 2
opt.showmode = false
