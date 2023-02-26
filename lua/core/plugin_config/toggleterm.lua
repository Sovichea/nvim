local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction='float' })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set('n', '<C-t>g', '<cmd>lua _lazygit_toggle()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-t>h', ':ToggleTerm direction="horizontal"<CR>')
vim.keymap.set('n', '<C-t>v', ':ToggleTerm size=60 direction="vertical"<CR>')

local on_open = function(_)
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

require("toggleterm").setup{
    on_open = on_open,
    float_opts = {
        border = 'curved',
    },
    shell = 'nu',
}
