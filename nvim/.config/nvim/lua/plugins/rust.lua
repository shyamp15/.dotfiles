local plugins = {
    {
        'mrcjkb/rustaceanvim',
        version = '^4', -- Recommended
        ft = { 'rust' },
        init = function() 
            --local on_attach = require("plugins.configs.lspconfig").on_attach
            --local capabilities = require("plugins.configs.lspconfig").capabilities

            vim.g.rustaceanvim = {
                server = {
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            }
        end
    },
    {
        "rust-lang/rust.vim",
        ft = { "rust" },
        init =function()
            vim.g.rustfmt_autosave = 1
        end
    }
}

return plugins
