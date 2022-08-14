local pluginConfs = require "custom.plugins.configs"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "onedark",
}

M.mappings = require("custom.mappings")

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["hrsh7th/nvim-cmp"] = pluginConfs.cmp,
    ["tzachar/cmp-tabnine"] = pluginConfs.tabnine
  }
}

return M
