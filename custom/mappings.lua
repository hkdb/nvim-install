local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

-- Your custom mappings
M.custom = {
  n = {
    ["<S-Tab!>"] = {"<cmd> bprevious <CR>", "Previous Tab in Buffer"},
    ["<S-Right>"] = {"<cmd> tabnext <CR>", "Next Window Tab"},
    ["<S-Left>"] = {"<cmd> tabprevious <CR>", "Last Window Tab"},
    ["<A-1>"] = {"<cmd> 1tabnext <CR>", "Jump to Window Tab 1"},
    ["<A-2>"] = {"<cmd> 2tabnext <CR>", "Jump to Window Tab 2"},
    ["<A-3>"] = {"<cmd> 3tabnext <CR>", "Jump to Window Tab 3"},
    ["<A-4>"] = {"<cmd> 4tabnext <CR>", "Jump to Window Tab 4"},
    ["<A-5>"] = {"<cmd> 5tabnext <CR>", "Jump to Window Tab 5"},
    ["<A-6>"] = {"<cmd> 6tabnext <CR>", "Jump to Window Tab 6"},
    ["<C-Delete>"] = {"<cmd> tabclose <CR>", "Close Window Tab"},
    ["<C-q>"] = {"<cmd> qall <CR>", "Close All & Quit"},
    ["<leader>r"] = {"<cmd> lua require('persistence').load() <CR>", "Restore Session (Dir)"},
  }

  -- i = {}
}

return M
