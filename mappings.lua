-- n, v, i, t = mode names

local M = {}

M.general = {
 i = {
   ["jk"] = { "<ESC>", " Exit insert mode", opts = { nowait = true }}
 },
 x = {
   ["<leader>p"] = {"\"_dP", " Greatest remap ever?"}
 },
 n = {
   ["<leader>y"] = {"\"+y", " Yank to clipboard."},
   ["<leader>gs"] = {"<cmd> Git <CR>", "Open git fugitive."}
 },
 v = {
   ["<leader>y"] = {"\"+y", " Yank to clipboard."}
 },
}

return M
