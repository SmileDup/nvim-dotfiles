return require('packer').startup(function()
	-- package manage
	use 'wbthomason/packer.nvim'
	
	-- lsp support
	use 'neovim/nvim-lspconfig'    
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'

    -- treesitter code highlight
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- fzf 
    use {
        'ojroques/nvim-lspfuzzy',
        requires = {
            {'junegunn/fzf'},
            {'junegunn/fzf.vim'},  -- to enable preview (optional)
        },
    }

	-- rice shit following
	-- nod theme 
	use 'shaunsingh/nord.nvim'
	-- air line
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
end)
