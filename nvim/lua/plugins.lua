return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}
  use {'vimlab/split-term.vim'}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }
  use{'drewtempelmeyer/palenight.vim'}
  use {'vim-python/python-syntax'}
  use {'sheerun/vim-polyglot'}

  use {'williamboman/nvim-lsp-installer'}

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  --use { 'kabouzeid/nvim-lspinstall' }
  use { 'nvim-lua/completion-nvim' }
  use { 'hrsh7th/nvim-compe' }
  use {'nvim-treesitter/nvim-treesitter'}
  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Snippets
    use { 'honza/vim-snippets' }
--    use { 'SirVer/ultisnips' }



    -- DAP
    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope-dap.nvim' }
    use { 'mfussenegger/nvim-dap-python' } -- Python

    -- Dashboard
    use { 'glepnir/dashboard-nvim' }
    --vimspector
    use { 'puremourning/vimspector' }

    --lualine
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    --bufferline
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    --nvim tree
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    
    use {'jiangmiao/auto-pairs'}

    --use {'Shougo/deoplete.nvim'}
    
    --use{'zchee/deoplete-jedi'}
    -- packer.nvim
    use { 'smithbm2316/centerpad.nvim' }
    -- Lua
    use {
    "folke/which-key.nvim",
    config = function()
        require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
    end
  }
    use {
    "numtostr/FTerm.nvim",
    config = function()
        require("FTerm").setup()
    end
  }







end)

