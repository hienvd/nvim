-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g       -- Global variables
local set = vim.opt   -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
set.mouse = 'a'                       -- Enable mouse support
set.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
set.swapfile = false                  -- Don't use swapfile
set.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete setions
set.timeoutlen = 500

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
set.number = true           -- Show line number
set.relativenumber = true   -- Set relative line number
set.showmatch = true        -- Highlight matching parenthesis
set.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
set.colorcolumn = '80'      -- Line lenght marker at 80 columns
set.splitright = true       -- Vertical split to the right
set.splitbelow = true       -- Horizontal split to the bottom
set.ignorecase = true       -- Ignore case letters when search
set.smartcase = true        -- Ignore lowercase for the whole pattern
set.linebreak = true        -- Wrap on word boundary
set.termguicolors = true    -- Enable 24-bit RGB colors
set.laststatus=3            -- Set global statusline

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
set.expandtab = true        -- Use spaces instead of tabs
set.shiftwidth = 2          -- Shift 2 spaces when tab
set.tabstop = 2             -- 1 tab == 2 spaces
set.smartindent = true      -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
set.hidden = true           -- Enable background buffers
set.history = 100           -- Remember N lines in history
set.lazyredraw = true       -- Faster scrolling
set.synmaxcol = 240         -- Max column for syntax highlight
set.updatetime = 700        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
set.shortmess:append "sI"

-- Disable builtins plugins
local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end

