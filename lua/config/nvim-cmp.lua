local cmp = require("cmp")

cmp.setup({
  -- Ensure the completion plugin is correctly set up
  snippet = {
    expand = function(args)
      -- Setup for your snippet engine; for example, using LuaSnip:
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" }, -- if you're using snippets
    -- other sources as needed
  }),
  -- more configurations
})
