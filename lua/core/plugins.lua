local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- plugins go here
return require('packer').startup(function(use)
  -- the package manager
  use 'wbthomason/packer.nvim'

  -- whats an ide without a file explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- default bar only looks good on linux
  use 'nvim-lualine/lualine.nvim'

  -- colorschemes
  use 'ellisonleao/gruvbox.nvim'

  -- syntax highlighting apparently
  use 'nvim-treesitter/nvim-treesitter'

  -- like fzf but goofier
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- lsp stuff
  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
}
  -- le completion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use('hrsh7th/cmp-nvim-lsp')
  use('onsails/lspkind.nvim')

  -- snippet
  use("L3MON4D3/LuaSnip")
  use('saadparwaiz1/cmp_luasnip')
  
  -- auto close to prevent carpal tunnel :)
  use("windwp/nvim-autopairs")

  -- git stuff lol
  use('lewis6991/gitsigns.nvim')

  -- flex
  use 'andweeb/presence.nvim'

  -- auto update just like vscode
  if packer_bootstrap then
    require('packer').sync()
  end
end)
