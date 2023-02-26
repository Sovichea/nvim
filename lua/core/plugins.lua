local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'rakr/vim-one',
    'ellisonleao/gruvbox.nvim',
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require 'nordic' .load()
        end
    },
    { "catppuccin/nvim", name = "catppuccin" },

    -- core function
    'wbthomason/packer.nvim',
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    -- completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*" 
    },

    -- terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- commenter
    'terrortylor/nvim-comment',

    -- git
    {'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim'},

    -- dashboard 
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },

    -- barbar
    {'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},

    { "lukas-reineke/indent-blankline.nvim" },
}


local opts = {}

require("lazy").setup(plugins, opts)
