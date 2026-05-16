local function is_win()
	return vim.fn.has("win32") == 1
end

return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			nil_ls = {
				mason = false,
				enabled = not is_win(),
				cmd = { "nil" },
			},

			-- TypeScript / JavaScript. Let LazyVim/mason-lspconfig start the server so
			-- LazyVim's LSP keymaps/capabilities (including gd) stay intact.
			vtsls = {
				settings = {
					vtsls = {
						autoUseWorkspaceTsdk = true,
					},
					typescript = {
						updateImportsOnFileMove = { enabled = "always" },
					},
				},
			},

			-- rust_analyzer = {
			-- 	mason = false,
			-- 	enabled = true,
			-- },

			-- fsautocomplete = {
			-- 	mason = false,
			-- 	enabled = true,
			-- },
		},
	},
}
