local wk = require("which-key")
local mappings = {
  q = {":q<CR>","Quit"},
  Q = {":wq<CR>","Save & Quit"},
  b = {":NvimTreeToggle<CR>","NvimTreeToggle"},
  w = {":w<CR>","Save"},
  x = {":BufferClose<CR>","Close"},
  ff = { "<cmd>Telescope find_files<cr>", "Find File" },
  fr = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  fg = { "<cmd>Telescope live_grep<cr>", "Telescope Live Grap" },
  ["["] = { "<Cmd>BufferPrevious<CR>", "Prev Buffer" },
  ["]"] = { "<Cmd>BufferNext<CR>", "Next Buffer" }
}
local opts = {
  prefix="<leader>"
}
wk.register(mappings,opts)

local presets = require("which-key.plugins.presets")
presets.operators["v"] = nil
presets.operators["d"] = nil
presets.operators["y"] = nil
