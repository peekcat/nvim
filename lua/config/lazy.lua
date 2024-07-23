local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  -- 引导 lazy.nvim
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- 添加 LazyVim 并且导入它的其他插件
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- 导入/覆盖你的插件
    { import = "plugins" },
  },
  defaults = {
    -- 默认情况下只有LazyVim会被懒加载，自定义插件将在启动过程中加载，可以设置为true懒加载自定义插件
    lazy = false,
    version = false, -- 永远使用最新的git commit版本
    -- version = "*", -- 尝试安装最新稳定版本插件来支持semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- 定期检查插件更新
    notify = false, -- 更新时通知
  },
  performance = {
    rtp = {
      -- 禁用rtp插件
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
