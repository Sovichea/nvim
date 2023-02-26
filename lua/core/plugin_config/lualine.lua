require('lualine').setup {
    options = {
        icon_enabled = true,
        theme = 'onedark',
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
