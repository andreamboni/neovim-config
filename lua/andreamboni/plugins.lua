return require('packer').startup(function()
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")

	-- Roubei do thePrimegean
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

	-- These are mine!
	use("frenzyexists/aquarium-vim")

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use 'williamboman/nvim-lsp-installer' -- LSP installer
	use 'hrsh7th/cmp-nvim-lsp'
end)
