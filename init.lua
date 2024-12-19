local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup("plugins")
require("user.settings")
require("user.mappings")
require("user.functions").set_theme()

require("telescope").load_extension("fzf")
require("telescope").load_extension("neoclip")

if vim.g.vscode then
    vim.cmd("runtime vscode.vim")
end

vim.cmd("runtime local.lua")
