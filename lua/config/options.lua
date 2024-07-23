-- options.lua在Lazy.nvim启动之前自动加载
-- 默认设置的options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
local opt = vim.opt

-- 行号
opt.relativenumber = false
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 高亮当前行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 光标移动预留5行
opt.scrolloff = 5

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.guifont = { "CaskaydiaCove Nerd Font", "OPlusSans 3.0" }
