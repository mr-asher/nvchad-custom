-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
local pluginConfs = require "custom.plugins.configs"

return {

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.custom-lspconfig"
    end,
  },

   ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
           require "custom.plugins.null-ls"
        end,
   },

  ["goolord/alpha-nvim"] = {
    disable = false
  },

  ["folke/which-key.nvim"] = {
    disable = false
  },

  ["tzachar/cmp-tabnine"] = {
     after = "nvim-cmp",
     run = "./install.sh",
     config = pluginConfs.tabnine
  },
}
