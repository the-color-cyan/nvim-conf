-- nvim-cmp config
-- https://github.com/hrsh7th/nvim-cmp
-- if true then
-- 	return {}
-- end

local cmp = require("cmp")

return {
	"hrsh7th/nvim-cmp",
	priority = 1000,
	opts = function(_, opts)
		local mappings = vim.tbl_extend("force", opts.mapping or {}, {

			-- Shift+Enter closes menu and inserts new line
			["<S-CR>"] = function(fallback)
				if cmp.visible() then
					cmp.close()
				end
				fallback()
			end,

			-- Tab completes the selected cmp item, then falls back to snippets, then a literal tab.
			["<Tab>"] = function(fallback)
				local luasnip = require("luasnip")
				if cmp.visible() then
					cmp.confirm({ select = true })
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				else
					fallback()
				end
			end,

			-- Ctrl+Space for ai_accept
			["<C-Space>"] = function(fallback)
				return LazyVim.cmp.map({ "ai_accept" }, fallback)()
			end,

			-- Ctrl+; to open completions menu
			["<C-;>"] = cmp.mapping.complete(),
		})

		opts.mapping = mappings
		return opts
	end,
}
