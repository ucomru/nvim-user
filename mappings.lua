
return { -- vim.keymap.set()

  n = {
    -- Markdown -- quickfix-window
    ["<leader>m"] = { desc = "Marked text" },
    ["<leader>mm"] = { "<cmd>:sil vim /^# / %<cr>:cope 7<cr>", desc = "Make heading list" },
    ["<leader>mM"] = { "<cmd>:sil vim /^#/ %<cr>:cope 7<cr>", desc = "Make advanced list" },
    ["<leader>m]"] = { "<cmd>:sil cn<cr>", desc = "Next heading" },
    ["<leader>m["] = { "<cmd>:sil cp<cr>", desc = "Back heading" },
    ["<leader>m/"] = { "<cmd>:if empty(filter(getwininfo(), 'v:val.quickfix')) | cope 7 | else | ccl | endif<cr>", desc = "List heading tgl" },
    ["<leader>ms"] = { "<cmd>:if &cole | se cole=0 | else | se cole=2 | endif<cr>", desc = "Syntax conceal tgl" },
    ["<leader>me"] = { "<cmd>:se list!<cr>", desc = "EOL & tab tgl" }, -- lua vim.opt.list = not(vim.opt.list:get())
    ["<leader>mr"] = { "<cmd>:if &cc | se cc= | else | se cc=80 | endif<cr>", desc = "Ruler 80 tgl" },
    ["<leader>mt"] = { "<cmd>:se ft=markdown cole=2 cc=80 ts=2 sw=2<cr>", desc = "Set ftype markdown" },
  },

}
