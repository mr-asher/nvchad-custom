local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "rosepine",
}

M.mappings = require("custom.mappings")

M.plugins = "custom.plugins"

return M
