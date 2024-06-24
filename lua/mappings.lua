--[[
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
]]

require 'nvchad.mappings'

local unmap = vim.keymap.del

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

map('n', 's', '<Plug>(leap)')
map('n', 'S', '<Plug>(leap-from-window)')
map({ 'x', 'o' }, 's', '<Plug>(leap-forward)')
map({ "x", "o" }, "S", '<Plug>(leap-backward)')
map({ 'i', 'v' }, '<C-s>', '<cmd> w <cr>')
map('n', '<C-o>', '<cmd> Telescope fd <cr>')
map({ 'i', 'n', 'v' }, '<C-q>', '<cmd> q <cr>')
