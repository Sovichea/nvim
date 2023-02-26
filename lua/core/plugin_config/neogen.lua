local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>dox", ":lua require('neogen').generate()<CR>", opts)

require('neogen').setup {
    enabled = true,             --if you want to disable Neogen
    input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
}
