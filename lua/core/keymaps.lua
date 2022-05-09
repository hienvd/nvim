-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins using WhichKey
-----------------------------------------------------------
-- Change leader to a SPACE
vim.g.mapleader = ' '

local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    c = { "<cmd>nohl<CR>", "Clear Highlight" },
    s = { "<cmd>w<CR>", "Save"},

    -- f for Files (Telescope)
    f = {
      name = "+file",
      f = { "<cmd>Telescope find_files<CR>", "Find File" },
      r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
      g = { "<cmd>Telescope live_grep<CR>", "Live Grep" }
    },

    -- t for Tree (NvimTree)
    t = {
      name = "+tree",
      t = { ':NvimTreeToggle<CR>', "Toggle NvimTree" },
      f = { ':NvimTreeFindFile<CR>', "NvimTree Find File" },
      r = { ':NvimTreeRefresh<CR>', "NvimTree Refresh" }
    },
  },

  ['<C-h>'] = { '<C-w>h', 'Move to h' },
  ['<C-j>'] = { '<C-w>j', 'Move to j' },
  ['<C-l>'] = { '<C-w>l', 'Move to l' },
  ['<C-k>'] = { '<C-w>k', 'Move to k' },
})
