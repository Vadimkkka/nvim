---@type Base46Config
local M = {
  -- jabuti, kanagawa, onedark, palenight, yoru, tokyonight, tokyodark, oceanic-next, nightfox, material-deep-ocean
  theme = "catppuccin",
  -- transparency = true,
  integrations = { "rainbowdelimiters", "todo" },
}

M.hl_add = {
  -- Modicator.nvim
  NormalMode = { fg = "blue" },
  InsertMode = { fg = "green" },
  VisualMode = { fg = "purple" },
  CommandMode = { fg = "orange" },
  -- ReplaceMode
  -- SelectMode
  -- TerminalMode
  -- TerminalNormalMode

  FlashMatch = { fg = "black", bg = "blue" },
  FlashCurrent = { fg = "black", bg = "green" },
  FlashLabel = { fg = "white", bold = true },
}

M.hl_override = {
  Comment = { italic = true },
  ["@comment"] = { italic = true },

  TbBufOnClose = { fg = "statusline_bg" },
  TbBufOffClose = { fg = "statusline_bg" },
  -- PERF aloe
  TodoBgPerf = { bg = "yellow" },
  TodoFgPerf = { fg = "yellow" },
  -- HACK aloe
  -- TODO aloe
  TodoBgTodo = { bg = "blue" },
  TodoFgTodo = { fg = "blue" },
  -- NOTE aloe
  -- FIX aloe
  -- WARN aloe
  -- TEST aloe
  NvimTreeGitNew = { fg = "green" },
  NvimTreeGitDirty = { fg = "yellow" },
  NvimTreeGitDeleted = { fg = "red" },
  NvimTreeSpecialFile = { fg = "purple" },

  St_NormalMode = { bg = "blue" },
  St_NormalModeSep = { fg = "blue" },
  St_InsertMode = { bg = "green" },
  St_InsertModeSep = { fg = "green" },
  St_VisualMode = { bg = "purple" },
  St_VisualModeSep = { fg = "purple" },
  St_CommandMode = { bg = "orange" },
  St_CommandModeSep = { fg = "orange" },

  St_pos_sep = { bg = "NONE", fg = "lightbg" },
  St_pos_icon = { bg = "lightbg", fg = "lavender" },
  St_pos_text = { bg = "lightbg", fg = "lavender" },
  St_cwd_sep = { bg = "lightbg", fg = "grey" },
  St_cwd_icon = { bg = "grey", fg = "blue" },
  St_cwd_text = { bg = "grey" },
  St_gitIcons = { fg = "purple", bold = false },
  -- FloatBorder = { fg = "blue" },
  -- BlinkCmpMenuBorder = { fg = "blue" },
  BlinkCmpDocBorder = { fg = "blue" },
  BlinkCmpSignatureHelpBorder = { fg = "blue" },
  -- BlinkCmpMenuBorder = { fg = "blue" },
  -- LspSignatureActiveParameter = { fg = "NONE", bg = "grey" },
}

return M
