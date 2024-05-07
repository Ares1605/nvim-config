local lspconfig = require("lspconfig")

lspconfig.intelephense.setup({
  -- Add any specific settings you want for PHP here
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000, -- Increase if you have very large PHP files
      },
    },
  },
})
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  cmd = {
    "/home/linuxbrew/.linuxbrew/bin/pyright-langserver",
    "/home/linuxbrew/.linuxbrew/bin/pyright-langserver",
    "--stdio",
  },
  settings = {
    python = {
      analysis = {
        extraPaths = { "/home/linuxbrew/.linuxbrew/Cellar/python@3.12/3.12.3/lib/python3.12/site-packages" },
      },
    },
  },
})
