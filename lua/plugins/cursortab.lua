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
			accept = "<Tab>",
			partial_accept = "<S-Tab>",
			trigger = false,
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

		local function trigger_completion()
			require("cursortab.daemon").send_event_immediate("trigger_completion")
		end

		vim.keymap.set({ "i", "n" }, "<C-CR>", trigger_completion, {
			desc = "Trigger CursorTab completion",
			noremap = true,
			silent = true,
		})
		vim.keymap.set({ "i", "n" }, "<C-Enter>", trigger_completion, {
			desc = "Trigger CursorTab completion",
			noremap = true,
			silent = true,
		})
	end,
}
