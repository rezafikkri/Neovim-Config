-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  open_on_tab = true,
  hijack_cursor = true,
  update_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  }, 
  git = {
    ignore = false,
  }
})
