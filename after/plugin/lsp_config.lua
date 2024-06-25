require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "quick_lint_js", "clangd", "cssls", "html", "tsserver", "vtsls", "biome" }
})

local on_attach = function(_, _)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").quick_lint_js.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function() return vim.loop.cwd() end
}

require("lspconfig").cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").vtsls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").biome.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
