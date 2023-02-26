require 'nvim-treesitter.configs'.setup {
    -- A list of parser name, or "all"
    ensure_installed = { "c", "lua", "vim" },
    -- Install parsers synchronously (only applied to 'ensure_installed')
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
