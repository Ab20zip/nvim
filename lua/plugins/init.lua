--[[
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
]]

return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    config = function()
      require 'configs.conform'
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require 'configs.lspconfig'
    end,
  },
  {
    'ggandor/leap.nvim',
    lazy = false,
  },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'vim',
        'lua',
        'vimdoc',
        'html',
        'css',
        'go',
        'rust',
        'typescript',
        'javascript',
        'svelte',
        'gdscript',
        'godot_resource',
        'gdshader',
      },
    },
  },
}
