-- keymaps.lua在Lazy.nvim启动之前自动加载
-- 默认设置的keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 可视模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 普通模式 ---------- ---
-- 按键
keymap.set("n", "s", "<nop>") -- 关闭s键
keymap.set("n", "S", ":w<CR>") -- 保存
keymap.set("n", "<leader>w", ":w!<CR>") -- 快速保存
keymap.set("n", "Q", ":q<CR>") -- 退出
keymap.set("n", "<C-q>", ":qa<CR>") -- 全部退出
keymap.set("n", "Y", "y$") -- 复制到行尾

-- 移动
keymap.set("n", "J", "5j") -- 光标向下移动5行
keymap.set("n", "K", "5k") -- 光标向上移动5行
keymap.set("n", "H", "0") -- 光标移动到行首
keymap.set("n", "L", "$") -- 光标移动到行尾
keymap.set("n", "W", "5w") -- 光标向后移动5个单词
keymap.set("n", "B", "5b") -- 光标向前移动5个单词
keymap.set("n", "E", "5e") -- 光标向后移动5个单词

-- 行移动
keymap.set("n", "<", "<<") -- 当前行向前移动一个Tab
keymap.set("n", ">", ">>") -- 当前行向后移动一个Tab

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>h", "<C-w>h") -- 窗口聚焦向左
keymap.set("n", "<leader>j", "<C-w>j") -- 窗口聚焦向下
keymap.set("n", "<leader>k", "<C-w>k") -- 窗口聚焦向上
keymap.set("n", "<leader>l", "<C-w>l") -- 窗口聚焦向右
keymap.set("n", "<up>", ":res +5<CR>") -- 窗口向上5行
keymap.set("n", "<down>", ":res -5<CR>") -- 窗口向下5行
keymap.set("n", "<left>", ":vertical resize -5<CR>") -- 窗口向左5列
keymap.set("n", "<right>", ":vertical resize +5<CR>") -- 窗口向右5列
keymap.set("n", "<LEADER>q", "<C-w>j:q<CR>") -- 关闭当前窗口下方的窗口

-- 页签
keymap.set("n", "tn", ":tabe<CR>") -- 创建新页签
keymap.set("n", "th", ":-tabnex<CR>") -- 下一个页签
keymap.set("n", "tl", ":+tabnext<CR>") -- 上一个页签
keymap.set("n", "tmh", ":-tabmove<CR>") -- 页签向左移动
keymap.set("n", "tml", ":+tabmove<CR>") -- 页签向右移动

-- 搜索
keymap.set("n", "=", "n")
keymap.set("n", "-", "N")
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 拼写检查
keymap.set("n", "<leader>ss", ":setlocal spell!<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
