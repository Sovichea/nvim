require('lualine').setup {
    options = {
        icon_enabled = true,
        theme = 'auto',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
