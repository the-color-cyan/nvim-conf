-- override color of dashboard header
return {
  "folke/tokyonight.nvim",
  opts = function(_, opts)
    opts.on_highlights = function(hl, c)
      hl["SnacksDashboardHeader"] = {
        fg = "#9ece6a",
      }
      --hl["SnacksDashboardTitle"] = { fg = "#e40046", bold = true }
      --hl["SnacksDashboardKey"] = { fg = "#e40046", bold = true }
    end
    return opts
  end,
}
