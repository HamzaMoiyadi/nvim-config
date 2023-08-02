return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- priority = 1000,
		-- lazy = false,
		config = function()
			-- load the colorscheme here
			require('catppuccin').setup({
				integrations = {
					telescope = {
						enabled = true,
						style = "nvchad"
					}
				}
			})
			-- vim.cmd([[colorscheme catppuccin-mocha]])
		end,
	}
}
