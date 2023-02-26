local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction='float' })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set('c', 'git', 'lua _lazygit_toggle()<CR>', {noremap = true, silent = true})
vim.keymap.set('c', 'termh', 'ToggleTerm direction="horizontal"<CR>')
vim.keymap.set('c', 'termv', 'ToggleTerm size=60 direction="vertical"<CR>')

require("toggleterm").setup{
    float_opts = {
        border = 'single',
    },
    shell = 'nu',
}
