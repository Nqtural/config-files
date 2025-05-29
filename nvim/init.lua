require "core.options"
require "core.keymaps"

-- package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require('lazy').setup({
    require 'plugins.treesitter',
    require 'plugins.neotree',
    require 'plugins.lualine',
    require 'plugins.alpha',
}, {
    ui = {
        icons = {}
    }
})
