local opts = {
  -- cmdline = { enabled = false },
  completion = {
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
    ghost_text = { enabled = true },
    menu = { auto_show = true },
    list = {
      selection = {
        preselect = true,
        auto_insert = false,
      },
    },
    trigger = {
      -- show_on_backspace = true,
      -- show_on_backspace_in_keyword = true,
    },
  },
  keymap = {
    -- set to 'none' to disable the 'default' preset
    preset = "none",
    ["<C-c>"] = { "show", "show_documentation", "hide_documentation", "hide" },
    --
    ["<Up>"] = { "select_prev", "fallback" },
    ["<Down>"] = { "select_next", "fallback" },
    --
    -- ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
    -- ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    --
    -- ["<Tab>"] = { "select_and_accept" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    --
    -- ["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
  },
}

return opts
