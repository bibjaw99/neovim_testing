return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = 15,
			open_mapping = [[<c-q>]],
			shade_filetypes = {},
			shade_terminal = true,
			shading_factor = 1,
			start_in_insert = true,
			persist_size = true,
			direction = "float",
			autochdir = true,
			float_opts = {
				border = "single",
				width = 130,
				height = 30,
			},
		})
	end,
}
