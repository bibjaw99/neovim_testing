return {
	"echasnovski/mini.pairs",
	event = {
		"BufReadPost",
		"BufNewFile",
		"BufWritePre",
	},
	version = false,
	opts = {
		modes = {
			insert = true,
			command = true,
			terminal = false,
		},
	},
}
