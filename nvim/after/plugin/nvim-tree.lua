-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true


local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<leader>^',  api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '<leader>&',  api.tree.change_root_to_node,          opts('Help'))
  vim.keymap.set('n', '<leader>to', api.tree.open,                         opts('Open'))
  vim.keymap.set('n', '<leader>tc', api.tree.close,                        opts('Close'))
  vim.keymap.set('n', '<leader>tt', api.tree.toggle,                       opts('Toggle'))
  vim.keymap.set('n', '<leader>tr', api.tree.reload,                       opts('Reload'))
  vim.keymap.set('n', '<leader><',  api.tree.collapse_all,                 opts('Collapse'))
  vim.keymap.set('n', '<leader>>',  api.tree.expand_all,                   opts('Expand'))
  vim.keymap.set('n', '?',          api.tree.toggle_help,                  opts('Help'))
end

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = my_on_attach,
})
