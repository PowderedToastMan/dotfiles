local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  execute "packadd packer.nvim"
end

-- initialize and configure packer
local packer = require("packer")
packer.init {
  enable = false, -- enable profiling via :PackerCompile profile=true
  threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile
}
local use = packer.use
packer.reset()

-- actual plugins list
use "wbthomason/packer.nvim"

use {
  'ellisonleao/gruvbox.nvim',
  config = function()
    vim.opt.termguicolors = true
    vim.g.background = "dark"
    vim.cmd[[colorscheme gruvbox]]
  end
}

use 'tpope/vim-surround'
use 'machakann/vim-highlightedyank'
use 'lambdalisue/suda.vim'
use({
  "aserowy/tmux.nvim",
  config = function()
    require("tmux").setup({
      -- overwrite default configuration
      -- here, e.g. to enable default bindings
      copy_sync = {
        -- enables copy sync and overwrites all register actions to
        -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
        enable = true,
      },
      navigation = {
        -- enables default keybindings (C-hjkl) for normal mode
        enable_default_keybindings = true,
      },
      resize = {
        -- enables default keybindings (A-hjkl) for normal mode
        enable_default_keybindings = true,
      }
    })
  end
})
use {
  "nvim-lualine/lualine.nvim",
  config = get_config("lualine"),
  event = "VimEnter",
}
