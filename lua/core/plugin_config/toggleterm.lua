
vim.keymap.set('n', '<C-t>f', ':ToggleTerm direction="float"<CR>')
vim.keymap.set('n', '<C-t>h', ':ToggleTerm direction="horizontal"<CR>')
vim.keymap.set('n', '<C-t>v', ':ToggleTerm size=60 direction="vertical"<CR>')

local on_open = function(_)
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

require("toggleterm").setup{
    on_open = on_open,
    direction = 'float',
    float_opts = {
        border = 'curved',
        winblend = 3,
    },
    shell = 'nu',
}
