-- https://github.com/NvChad/NvChad
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
local utils = require "nvchad.stl.utils"

---@type ChadrcConfig
local M = {}

M.nvdash = {
  header = {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    "                                 ",
  },
  load_on_startup = true,
}

M.base46 = {
  -- jabuti, kanagawa, onedark, palenight
  theme = "catppuccin",
  transparency = true,
  integrations = { "rainbowdelimiters", "todo" },
  hl_add = {
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
  },
  hl_override = {
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
  },
}
M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
  cmp = {
    style = "atom_colored",
    -- format_colors = {
    --   tailwind = true,
    -- },
  },
  cheatsheet = {
    theme = "simple",
  },
  statusline = {
    order = { "mode", "cwd", "fileWithPath", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor" },
    -- https://github.com/NvChad/ui/blob/v3.0/lua/nvchad/stl/default.lua
    -- arrow = { left = "", right = "" },
    modules = {
      mode = function()
        if not utils.is_activewin() then
          return ""
        end

        local modes = utils.modes

        local m = vim.api.nvim_get_mode().mode

        --    
        local current_mode = "%#St_" .. modes[m][2] .. "Mode#  " .. modes[m][1] .. " "
        local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#"
        -- "%#ST_EmptySpace#"
        return current_mode .. mode_sep1
      end,
      cwd = function()
        local name = vim.uv.cwd()
        ---@diagnostic disable-next-line: need-check-nil
        name = "%#St_cwd_text#" .. (name:match "([^/\\]+)[/\\]*$" or name) .. " "
        return (vim.o.columns > 85 and ("%#St_cwd_icon# 󰉋 " .. name .. "%#St_cwd_sep#")) or ""
      end,
      -- relativePath = function()
      --   local path = vim.api.nvim_buf_get_name(utils.stbufnr())
      --   if path == "" then
      --     return ""
      --   end
      --
      --   return "%#St_cwd_text# " .. vim.fn.expand("%:.:h"):gsub("\\", "/") .. "/"
      -- end,
      fileWithPath = function()
        local path = vim.fn.expand("%:.:h"):gsub("\\", "/") .. "/"

        local x = utils.file()
        return "%#St_file# " .. x[1] .. " " .. path .. x[2] .. " %#St_file_sep#"
      end,
      git = function()
        if not vim.b[utils.stbufnr()].gitsigns_head or vim.b[utils.stbufnr()].gitsigns_git_status then
          return ""
        end

        local git_status = vim.b[utils.stbufnr()].gitsigns_status_dict
        -- TODO icons, colors
        local added = (git_status.added and git_status.added ~= 0) and ("%#Added#  " .. git_status.added) or ""
        local changed = (git_status.changed and git_status.changed ~= 0) and ("%#Changed#  " .. git_status.changed)
          or ""
        local removed = (git_status.removed and git_status.removed ~= 0) and ("%#Removed#  " .. git_status.removed)
          or ""
        -- 
        local branch_name = " " .. git_status.head

        return "%#St_gitIcons# " .. branch_name .. added .. changed .. removed
      end,
      diagnostics = function()
        if not rawget(vim, "lsp") then
          return ""
        end

        local err = #vim.diagnostic.get(utils.stbufnr(), { severity = vim.diagnostic.severity.ERROR })
        local warn = #vim.diagnostic.get(utils.stbufnr(), { severity = vim.diagnostic.severity.WARN })
        local hints = #vim.diagnostic.get(utils.stbufnr(), { severity = vim.diagnostic.severity.HINT })
        local info = #vim.diagnostic.get(utils.stbufnr(), { severity = vim.diagnostic.severity.INFO })
        -- TODO icons
        ---@diagnostic disable-next-line: cast-local-type
        err = (err and err > 0) and ("%#St_lspError#" .. " " .. err .. " ") or ""
        ---@diagnostic disable-next-line: cast-local-type
        warn = (warn and warn > 0) and ("%#St_lspWarning#" .. " " .. warn .. " ") or ""
        ---@diagnostic disable-next-line: cast-local-type
        hints = (hints and hints > 0) and ("%#St_lspHints#" .. " " .. hints .. " ") or ""
        ---@diagnostic disable-next-line: cast-local-type
        info = (info and info > 0) and ("%#St_lspInfo#" .. " " .. info .. " ") or ""

        return " " .. err .. warn .. hints .. info
      end,
      lsp = function()
        if rawget(vim, "lsp") then
          for _, client in ipairs(vim.lsp.get_clients()) do
            if client.attached_buffers[utils.stbufnr()] then
              return (vim.o.columns > 100 and "%#St_Lsp# 󰁨  " .. client.name .. " ") or "%#St_Lsp# 󰁨  "
            end
          end
        end

        return ""
      end,
      cursor = "%#St_pos_sep#%#St_pos_icon#  %#St_pos_text#%l:%v ",
    },
  },
}

return M
