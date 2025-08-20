local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- keymaps por defecto
    lsp_zero.default_keymaps({ buffer = bufnr })

    -- formatear al guardar (si el LSP soporta)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
end)


-- mason: gestor de servidores
require('mason').setup()

-- mason-lspconfig: integración con nvim-lspconfig
require('mason-lspconfig').setup({
    ensure_installed = {
        "gopls",
        "ts_ls",
        "sqls",
        "lua_ls",
    },

    handlers = {
        lsp_zero.default_setup,
    },
})

lsp_zero.setup()
