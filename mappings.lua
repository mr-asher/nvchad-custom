-- n, v, i, t = mode names

local M = {}

M.general = {
 i = {
   ["jk"] = { "<ESC>", "exit insert mode", opts = { nowait = true }}
 },
 x = {
   ["<leader>p"] = {"\"_dP", "greatest remap ever?"}
 },
 n = {
   ["<leader>y"] = {"\"+y", "yank to clipboard"},
   ["<leader>gs"] = {"<cmd> Git <CR>", "git fugitive"}
 },
 v = {
   ["<leader>y"] = {"\"+y", "yank to clipboard"}
 },
}

return M
