return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.lspconfig"
        end
    }, {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function() require "custom.null-ls" end
        },

        config = function()
            require "plugins.configs.lspconfig"
            require "custom.lspconfig"
        end
    }, {"tpope/vim-fugitive", lazy = false}, {"tpope/vim-rhubarb"}
}
