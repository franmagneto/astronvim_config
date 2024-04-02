-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- enable servers that you already have installed without mason
    servers = {
      "bass_lsp",
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      bass_lsp = {
        cmd = { "bass-lsp", "--stdio" },
        filetypes = { "snes", "megadrive", "nes", "bass" },
        root_dir = require("lspconfig.util").root_pattern "main.asm",
      },
    },
  },
}
