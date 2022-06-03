-----------------------------------------------------------
-- Dashboard configuration file
-----------------------------------------------------------

-- Plugin: alpha-nvim
-- url: https://github.com/goolord/alpha-nvim

-- For configuration examples see: https://github.com/goolord/alpha-nvim/discussions/16


local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require('alpha.themes.dashboard')

-- Footer
local function footer()
  local version = vim.version()
  local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
  local datetime = os.date('%Y/%m/%d %H:%M:%S')

  return print_version .. ' ' .. datetime
end

-- Banner
local ascii = {
"                         .^!^                                           .!~:                        ",
"                    ^!JPB&B!.                                            !&&BPJ!:                   ",
"                ^?P#@@@@@G.                   :       :                   !@@@@@&BY!:               ",
"             ^JB@@@@@@@@@7                   .#~     ?P                   .&@@@@@@@@&G?:            ",
"          .7G@@@@@@@@@@@@#!                  ?@#^   ~@@^                 .5@@@@@@@@@@@@@G7.         ",
"        .?#@@@@@@@@@@@@@@@@BY!^.             B@@&BBB&@@Y              :~Y&@@@@@@@@@@@@@@@@#?.       ",
"       !#@@@@@@@@@@@@@@@@@@@@@@#G5Y?!~^:..  !@@@@@@@@@@#.   ..::^!7J5B&@@@@@@@@@@@@@@@@@@@@@B!      ",
"     .5@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&##B#@@@@@@@@@@@BBBB##&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y     ",
"    :B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5    ",
"   .B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@?   ",
"   5@&#BGGPPPPPGGB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BGGPP5PPPGBB#&#.  ",
"   ^:..           .^!YB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&57^.            .:^.  ",
"                       ~G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y.                      ",
"                         P@@@#BGGGGB#@@@@@@@@@@@@@@@@@@@@@@@@@#BP5555PG#@@@P                        ",
"                         :J!:.      .^!JG&@@@@@@@@@@@@@@@@#57^.        .:!5~                        ",
"                                         :?G@@@@@@@@@@@@P!.                                         ",
"                                            ~5@@@@@@@@5^                                            ",
"                                              ^P@@@@G^                                              ",
"                                                !#@?                                                ",
"                                                 :^ ",
}

dashboard.section.header.val = ascii

-- Menu
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button('f', '  Find file', ':NvimTreeOpen<CR>'),
  dashboard.button('s', '  Settings', ':e $MYVIMRC<CR>'),
  dashboard.button('u', '  Update plugins', ':PackerUpdate<CR>'),
  dashboard.button('q', '  Quit', ':qa<CR>'),
}

dashboard.section.footer.val = footer()

alpha.setup(dashboard.config)
