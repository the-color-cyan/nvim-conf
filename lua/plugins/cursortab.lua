return {
	"cursortab/cursortab.nvim",
	lazy = false,
	build = "cd server && go build",
	opts = {
		provider = {
			type = "mercuryapi",
			api_key_env = "MERCURY_AI_TOKEN",
		},
		keymaps = {
			-- Keep CursorTab out of insert mode so it does not interfere with normal tab completion.
			accept = false,
			partial_accept = false,
			trigger = false,
		},
		ui = {
			completions = {
				-- Avoid CursorTab's dimmed floating overlay path, which has special cursorline handling.
				addition_style = "highlight",
			},
		},
		behavior = {
			-- On-demand only: completions appear when manually triggered.
			text_change_debounce = -1,
			idle_completion_delay = -1,
			enabled_modes = {},
			ignore_filetypes = { "", "terminal", "bigfile", "snacks_input", "snacks_notif" },
		},
	},
	config = function(_, opts)
		require("cursortab").setup(opts)

		vim.keymap.set("n", "<D-CR>", function()
			require("cursortab.daemon").send_event_immediate("trigger_completion")
		end, { desc = "Trigger CursorTab completion", noremap = true, silent = true })

		vim.keymap.set("n", "<Tab>", function()
			if not require("cursortab").accept() then
				return "<Tab>"
			end
			return ""
		end, { desc = "Accept CursorTab completion", expr = true, noremap = true, silent = true })
	end,
}
