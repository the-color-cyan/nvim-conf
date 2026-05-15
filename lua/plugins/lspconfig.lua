local function is_win()
	if vim.fn.has("win32") == 1 then
		return true
	else
		return false
	end
end

return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		-- nil (nix) - system binary
		lspconfig.nil_ls.setup({
			cmd = { "nil" },
		})

		-- TypeScript / JavaScript - prefer system/Nix vtsls, fall back to Mason
		local vtsls = vim.fn.exepath("vtsls")
		if vtsls == "" then
			vtsls = vim.fn.stdpath("data") .. "/mason/bin/vtsls"
		end

		lspconfig.vtsls.setup({
			cmd = { vtsls, "--stdio" },
			filetypes = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			},
			settings = {
				vtsls = {
					autoUseWorkspaceTsdk = true,
				},
				typescript = {
					updateImportsOnFileMove = { enabled = "always" },
				},
			},
		})

		-- rust - system binary
		-- lspconfig.rust_analyzer.setup({
		-- 	cmd = { "rust-analyzer" },
		-- })

		-- fsautcomplete (f#) - system binary
		-- lspconfig.fsautocomplete.setup({
		-- 	cmd = { "fsautocomplete", "--background-service-enabled" },
		-- })
	end,
	opts = {
		servers = {
			nil_ls = {
				mason = false,
				enabled = not is_win(),
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
