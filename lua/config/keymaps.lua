-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),                                 -- Use <Tab> to confirm completion
    ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), -- Rebind next item to <C-j>
    ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), -- Rebind previous item to <C-k>
    ['<CR>'] = cmp.mapping(function(fallback)
      fallback()                                                                        -- Prevent <Enter> from confirming the completion
    end, { 'i', 's' }),
  },
})

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.opt.whichwrap:append("<,>,h,l")
