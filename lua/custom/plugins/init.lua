-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
require 'custom.configs.lspconfig'

--
-- See the kickstart.nvim README for more information
return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
    },
    --config = function()
    --  require('alpha').setup(require('alpha.themes.theta').config)
    --end,
    --config = require('custom.configs.alpha').config,
  },
}
