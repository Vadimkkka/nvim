-- https://github.com/NvChad/NvChad
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- https://github.com/NvChad/base46/tree/v2.5/lua/base46
local utils = require "nvchad.stl.utils"

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  integrations = { "rainbowdelimiters", "todo" },
  hl_override = {
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
    St_InsertMode = { bg = "sun" },
    St_InsertModeSep = { fg = "sun" },
    St_pos_sep = { bg = "NONE", fg = "lightbg" },
    St_pos_icon = { bg = "lightbg", fg = "lavender" },
    St_pos_text = { bg = "lightbg", fg = "lavender" },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}
M.ui = {
  nvdash = {
    load_on_startup = true,
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
  statusline = {
    separator_style = "arrow",
    order = { "mode", "cwd", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor" },
    -- https://github.com/NvChad/ui/blob/v2.5/lua/nvchad/stl/default.lua
    modules = {
      mode = function()
        if not utils.is_activewin() then
          return ""
        end

        local modes = utils.modes

        local m = vim.api.nvim_get_mode().mode

        local current_mode = "%#St_" .. modes[m][2] .. "Mode# 󱁆 " .. modes[m][1]
        local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#"
        return current_mode .. mode_sep1 .. "%#ST_EmptySpace#"
      end,
      cwd = function()
        local name = vim.loop.cwd()
        name = "%#St_cwd_text# " .. (name:match "([^/\\]+)[/\\]*$" or name) .. " /"
        return (vim.o.columns > 85 and name) or ""
      end,
      git = function()
        if not vim.b[utils.stbufnr()].gitsigns_head or vim.b[utils.stbufnr()].gitsigns_git_status then
          return ""
        end

        local git_status = vim.b[utils.stbufnr()].gitsigns_status_dict
        -- TODO icons, colors
        local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
        local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
        local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
        local branch_name = " " .. git_status.head

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
        err = (err and err > 0) and ("%#St_lspError#" .. " " .. err .. " ") or ""
        warn = (warn and warn > 0) and ("%#St_lspWarning#" .. " " .. warn .. " ") or ""
        hints = (hints and hints > 0) and ("%#St_lspHints#" .. "" .. hints .. " ") or ""
        info = (info and info > 0) and ("%#St_lspInfo#" .. " " .. info .. " ") or ""

        return " " .. err .. warn .. hints .. info
      end,
      lsp = function()
        local version = vim.version().minor
        if rawget(vim, "lsp") and version >= 10 then
          for _, client in ipairs(vim.lsp.get_clients()) do
            if client.attached_buffers[utils.stbufnr()] then
              return (vim.o.columns > 100 and "%#St_Lsp# 󰁨  " .. client.name .. " ") or "%#St_Lsp# 󰁨  "
            end
          end
        end

        return ""
      end,
      cursor = function()
        local pos = vim.fn.getcurpos()
        return "%#St_pos_sep#%#St_pos_icon#  %#St_pos_text#" .. pos[2] .. ":" .. pos[3] .. " "
      end,
    },
  },
}

M.lsp = { signature = true }

return M
