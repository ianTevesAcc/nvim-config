-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- load cmp & lvim plugin
local cmp = require("cmp")

-- Use tab instead of enter to select auto complete selections
cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Use <Tab> to confirm completion
    ["<CR>"] = cmp.mapping(function(fallback)
      fallback() -- Prevent <Enter> from confirming the completion
    end, { "i", "s" }),
  },
})

-- Use jk to exit insert mode and enter normal mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Allow cursor to more to next or previous line when at past end or beginning of line
vim.opt.whichwrap:append("<,>,h,l")

-- Delete Arrow Functionality
-- Disable arrow keys
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
-- If you also want to disable arrow keys in insert mode
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", { noremap = true, silent = true })
-- Disable vim-cmp Up and Down selection
cmp.setup({
  mapping = {
    ["<Up>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.close()
      end
      fallback()
    end, { "i" }),
    ["<Down>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.close()
      end
      fallback()
    end, { "i" }),
  },
})

-- Toggle Transparency Toggle
vim.keymap.set("n", "<leader>tt", function()
  local cat = require("catppuccin")
  cat.options.transparent_background = not cat.options.transparent_background
  cat.compile()
  vim.cmd.colorscheme(vim.g.colors_name)
end)

-- Center cursor when navigating
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "G", "Gzz", { noremap = true, silent = true })

-- Remap paste to paste what is deleted and cute instead of pasted over deletions and cuts
vim.keymap.set("x", "<leader>p", '"_dP')
