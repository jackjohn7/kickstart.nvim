return {
  -- See `:help lspconfig-all` for a list of all the pre-configured LSPs
  -- clangd = {},
  gopls = {},
  pyright = {},
  rust_analyzer = {},
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`tsserver`) will work just fine
  -- tsserver = {},
  --
  --
  ocamllsp = {},

  html = {},

  htmx = {},

  lua_ls = {
    -- cmd = {...},
    -- filetypes = { ...},
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}
