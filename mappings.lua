  
return {
  -- vim.keymap.set()
  v = { -- visual mode
    ["x"] = { '"_x' },
  },
  i = { -- insert mode
    -- im: ^V + key -> shortkey
    ["<C-S>"] = { "<Esc><Cmd>w<CR>" },
    ["<C-Q>"] = { "<Esc><C-Q>" },
  },
  n = { -- normal mode
    ["x"] = { '"_x' },
    ["X"] = { '"_X' },
    ["|"] = false, -- :nunmap | :map - all map
    ["\\"] = { false, desc = "Alt" },
    ["\\d"] = { '"_d', desc = "Alt" },
    ["\\dd"] = { '"_dd', desc = "Alt" },
    -- shortkeys
    ["<M-s>"] = { "<cmd>w!<cr>", desc = "Force write" },
    ["<M-q>"] = { "<cmd>qa!<cr>", desc = "Force quit" },
    ["<C-S>"] = { "<Cmd>w<CR>", desc = "Save" },
    ["<C-Q>"] = { function() local bufs_cnt = #vim.t.bufs; require("astronvim.utils.buffer").close();
        if bufs_cnt == 1 and #vim.t.bufs == 1 then vim.cmd("conf q") end end, desc = "Smart close buffer" },
    ["<C-\\>"] = { function() require('smart-splits').move_cursor_previous() end, desc = "Move to previous split" },
    -- :bf[irst] :bl[ast] :[#]bn[ext] :[#]bp[rev] :ls[buffers] :b # - alternate C-^ :lua =#vim.t.bufs
    ["<M-j>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Previous buffer :bp" },
    ["<M-k>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Next buffer :bn" },
    ["<M-l>"] = { function() require("astronvim.utils.status.heirline").buffer_picker(
      function(bufnr) vim.api.nvim_win_set_buf(0, bufnr) end) end, desc = "Select buffer from tabline", },
    ["<M-J>"] = { function() require("astronvim.utils.buffer").move(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Move buffer tab left" },
    ["<M-K>"] = { function() require("astronvim.utils.buffer").move(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Move buffer tab right" },
    ["<M-C-[>"] = { "<M-j>" },
    ["<M-C-]>"] = { "<M-k>" },
    -- leader ..
    ["<Leader>\\"] = { "<Cmd>split<cr>", desc = "Horizontal Split" },
    ["<Leader>|"] = { "<Cmd>vsplit<cr>", desc = "Vertical Split" },
    ["<leader>."] = { function() vim.opt.list = not(vim.opt.list:get()) end, desc = "Toggle list mode" }, -- se list!
    ["<leader>,"] = { function() if vim.opt.colorcolumn:get()[1] then vim.opt.colorcolumn = ""
        else vim.opt.colorcolumn = "80" end end, desc = "Toggle column cc=80" },
    ["<leader>m"] = { "<Cmd>if &cole | se cole=0 | else | se cole=2 | endif<CR>", desc = "Toggle markdown syntax" },
    ["<leader>M"] = { "<Cmd>se ft=markdown cole=2 cc=80 ts=2 sw=2<CR>", desc = "Set filetype markdown" },
    ["<leader>I"] = { "<Cmd>$pu!='\nvim:ft=markdown:cole=2:cc=80:ts=2:sw=2'<CR>", desc = "Insert filetype at EOL" },
  },
}
