require("config.lazy")
require("config.lspconfig")
require("config.nvim-cmp")
if vim.fn.has("gui_running") == 1 then
  vim.opt.guifont = "Hack Nerd Font:h11"
end
