return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "vtsls" },
		automatic_enable = {
			exclude = { "nil_ls" },
		},
	},
}
