require('language-plugins-setup')
require('autocompletion')

require('colorizer').setup()
require('rust-tools').setup({})
require('rust-tools.hover_range').hover_range()
require('rust-tools.hover_actions').hover_actions()
require('rust-tools.inlay_hints').set_inlay_hints()
