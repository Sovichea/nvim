require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "cmake", "marksman", "pyright", "yamlls",  },
    automatic_installation = true,
})

local on_attach = function(_, bufnr)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, {})
    vim.keymap.set('n', 'gt', require('telescope.builtin').lsp_type_definitions, {})
    vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'gs', require('telescope.builtin').lsp_document_symbols, {})
    vim.keymap.set('n', 'gS', require('telescope.builtin').lsp_workspace_symbols, {})
    vim.keymap.set('n', 'gx', require('telescope.builtin').diagnostics, {})
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
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

require("lspconfig").cmake.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
