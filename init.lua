--[[
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
]]

vim.g.base46_cache = vim.fn.stdpath 'data' .. '/nvchad/base46/'
vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local repo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', repo, '--branch=stable', lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require 'configs.lazy'

-- load plugins
require('lazy').setup({
  {
    'NvChad/NvChad',
    lazy = false,
    branch = 'v2.5',
    import = 'nvchad.plugins',
    config = function()
      require 'options'
    end,
  },

  { import = 'plugins' },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')

require 'nvchad.autocmds'

vim.schedule(function()
  require 'mappings'
end)
