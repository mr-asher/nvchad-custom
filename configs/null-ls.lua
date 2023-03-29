local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

-- null_ls.setup({
-- 	debug = true,
-- 	sources = {
--         formatting.eslint,
--         formatting.fixjson,
--         formatting.markdownlint,
--         formatting.black,
--         formatting.isort,
--         formatting.prettier.with({
--             prefer_local = "node_modules/.bin",
--         }),
--         formatting.lua_format,
--         formatting.trim_newlines,
--         formatting.trim_whitespace,
--         diagnostics.flake8.with({
--             extra_args = { "--max-line-length=119" }
--         }),
--         diagnostics.eslint.with({
--           prefer_local = "node_modules/.bin"
--         }),
--         diagnostics.luacheck,
--         code_actions.eslint.with({
--             prefer_local = "node_modules/.bin"
--         }),
--         code_actions.gitsigns,
--         code_actions.gitrebase,
--
--         hover.dictionary
-- 	},
-- })
