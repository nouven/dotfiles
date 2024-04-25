local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})
	use({ "saadparwaiz1/cmp_luasnip" })
	use("jose-elias-alvarez/null-ls.nvim")
	use("onsails/lspkind-nvim")
	use({
		"L3MON4D3/LuaSnip",
	})

	use("glepnir/lspsaga.nvim")

	--use 'navarasu/onedark.nvim'
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("kyazdani42/nvim-web-devicons") -- File icons

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")

	use("akinsho/nvim-bufferline.lua")

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use({
		"nvim-tree/nvim-tree.lua",
	})

	use({ "ellisonleao/gruvbox.nvim" })

	-- use {
	--   "rest-nvim/rest.nvim",
	--   rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
	-- }

	use({ "lewis6991/gitsigns.nvim" })
	use({
		"numToStr/Comment.nvim",
	})
	use({ "NeogitOrg/neogit", requires = "nvim-lua/plenary.nvim" })

	use({ "mfussenegger/nvim-dap" })
	use({
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {},
		},
	})
	use({
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	})
end)
