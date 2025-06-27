-- override color of dashboard header
return {
    "folke/tokyonight.nvim",
    opts = {
        on_highlights = function(hl, c)
            hl.BlinkCmpGhostText = {
                fg = "#737aa2",
                bg = "#292e42",
            }
            hl.SnacksDashboardHeader = {
                fg = "#9ece6a",
            }
            --hl["SnacksDashboardKey"] = { fg = "#e40046", bold = true }
            --hl["SnacksDashboardTitle"] = { fg = "#e40046", bold = true }
        end,
    },
}
--[[
  bg = "#1a1b26",
  bg_dark = "#16161e",
  bg_dark1 = "#0C0E14",
  bg_float = "#16161e",
  bg_highlight = "#292e42",
  bg_popup = "#16161e",
  bg_search = "#3d59a1",
  bg_sidebar = "#16161e",
  bg_statusline = "#16161e",
  bg_visual = "#283457",
  black = "#15161e",
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  border = "#15161e",
  border_highlight = "#27a1b9",
  comment = "#565f89",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#20303b",
    change = "#1f2231",
    delete = "#37222c",
    text = "#394b70"
  },
  error = "#db4b4b",
  fg = "#c0caf5",
  fg_dark = "#a9b1d6",
  fg_float = "#c0caf5",
  fg_gutter = "#3b4261",
  fg_sidebar = "#a9b1d6",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
    ignore = "#545c7e"
  },
  green = "#9ece6a",
  green1 = "#73daca",
  green2 = "#41a6b5",
  hint = "#1abc9c",
  info = "#0db9d7",
  magenta = "#bb9af7",
  magenta2 = "#ff007c",
  none = "NONE",
  orange = "#ff9e64",
  purple = "#9d7cd8",
  rainbow = { "#7aa2f7", "#e0af68", "#9ece6a", "#1abc9c", "#bb9af7", "#9d7cd8", "#ff9e64", "#f7768e" },
  red = "#f7768e",
  red1 = "#db4b4b",
  teal = "#1abc9c",
  terminal = {
    black = "#15161e",
    black_bright = "#414868",
    blue = "#7aa2f7",
    blue_bright = "#8db0ff",
    cyan = "#7dcfff",
    cyan_bright = "#a4daff",
    green = "#9ece6a",
    green_bright = "#9fe044",
    magenta = "#bb9af7",
    magenta_bright = "#c7a9ff",
    red = "#f7768e",
    red_bright = "#ff899d",
    white = "#a9b1d6",
    white_bright = "#c0caf5",
    yellow = "#e0af68",
    yellow_bright = "#faba4a"
  },
  terminal_black = "#414868",
  todo = "#7aa2f7",
  warning = "#e0af68",
  yellow = "#e0af68"
  }
--]]
