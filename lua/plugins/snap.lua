-----------------------------------------------------------
-- Snap configuration file
-----------------------------------------------------------

-- Plugin: snap
-- url: https://github.com/camspiers/snap

local snap = require 'snap'
snap.maps {
  {"<Leader>ss", snap.config.vimgrep {}},
}
-- snap.run {
--   producer = snap.get'producer.ripgrep.vimgrep',
--   select = snap.get'select.vimgrep'.select,
--   multiselect = snap.get'select.vimgrep'.multiselect,
--   views = {snap.get'preview.vimgrep'}
-- }
