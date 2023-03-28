---@type ChadrcConfig
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyonight",
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
