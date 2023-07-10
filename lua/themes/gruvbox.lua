-- https://github.com/morhetz/gruvbox/

return {
	"morhetz/gruvbox",
	lazy = false,
	priority = 1000,
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme gruvbox]])
	end,
}
