-- local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Get those LSPs under control
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- Better git
  { "tpope/vim-fugitive", lazy = false },

  -- Even better git
  { "tpope/vim-rhubarb" },
}

return plugins
