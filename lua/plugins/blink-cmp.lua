return {
    "saghen/blink.cmp",
    opts = {
        -- completions = {
        --     trigger = {
        --         show_on_blocked_trigger_characters = {},
        --     },
        -- },
        sources = {
            providers = {
                lsp = {
                    override = {
                        get_trigger_characters = function(self)
                            local trigger_characters = self:get_trigger_characters()
                            vim.list_extend(trigger_characters, { "\n", "\t", " " })
                            return trigger_characters
                        end,
                    },
                },
            },
        },
    },
}
