
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
 use 'wbthomason/packer.nvim';
 use 'nvim-lua/plenary.nvim';

  -- Visual
 use 'glepnir/dashboard-nvim';
 use 'dracula/vim';
 use 'famiu/feline.nvim';
 use 'kyazdani42/nvim-web-devicons';
 use 'kyazdani42/nvim-tree.lua';
 use 'nvim-telescope/telescope.nvim';
 use 'akinsho/bufferline.nvim';
 use "lukas-reineke/indent-blankline.nvim"; -- use 'Yggdroot/indentLine';
 use 'nvim-treesitter/nvim-treesitter';

  -- Editor
use 'windwp/nvim-autopairs';
use 'tpope/vim-surround';
use 'tpope/vim-commentary';
use 'tpope/vim-repeat';
use 'pbrisbin/vim-mkdir';
use 'RRethy/vim-illuminate';
use 'voldikss/vim-floaterm'
use 'ervandew/supertab'
-- Js/Ts
use 'pangloss/vim-javascript';
use 'MaxMEllon/vim-jsx-pretty';
use 'HerringtonDarkholme/yats.vim';
use 'styled-components/vim-styled-components';

-- -- LSP
-- use 'neovim/nvim-lspconfig';
-- use 'williamboman/nvim-lsp-installer';
-- use 'hrsh7th/nvim-cmp';
-- use 'hrsh7th/cmp-nvim-lsp';
-- use 'hrsh7th/cmp-path';
-- use 'hrsh7th/cmp-buffer';
-- use 'saadparwaiz1/cmp_luasnip';


--Coc
use {'neoclide/coc.nvim', branch = 'release'};


-- Json
use 'elzr/vim-json';


-- Snipets
use 'L3MON4D3/LuaSnip';


end)
