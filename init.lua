-- Ensure packer is installed and bootstrapped
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.cmd([[packadd packer.nvim]])
require("packer").startup(function(use)
  -- Plugin definitions go here
  -- Example:
  -- use 'wbthomason/packer.nvim' -- Packer can manage itself
end)
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.lspconfig")
require("config.nvim-cmp")
if vim.fn.has("gui_running") == 1 then
  vim.opt.guifont = "Hack Nerd Font:h11"
end
