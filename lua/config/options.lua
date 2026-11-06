vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt 

-- UI
opt.number = true 		-- shows line number 
opt.relativenumber = true 	--relative numbers = easy "5j" / "3k" jumps
opt.cursorline = true 		-- highlight current line 
opt.signcolumn = "yes"		-- stops text shifting when LSP signs appear later 
opt.scrolloff = 8 		-- keep 8 lines of context around cursor 
opt.termguicolors = true 	-- 24-bit color 

-- Indentation
opt.expandtab = true		-- tabs become spaces 
opt.shiftwidth = 4 
opt.tabstop = 4 
opt.smartindent = true 

-- Search 
opt.ignorecase = true 
opt.smartcase = true		-- case-sensitive only if you type a capital 
opt.hlsearch = false 

-- Behaviour 
opt.clipboard = "unnamedplus"	-- yank/paste uses system clipboard
opt.mouse = "a"
opt.undofile = true		-- persistent undo across sessions 
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 250
