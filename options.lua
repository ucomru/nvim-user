-- :let -- get all var
-- :checkhealth
return {
  g = { -- vim.g.
    -- :lua =vim.b.gitsigns_status_dict["root"] -- package root path
    -- :echo g:python3_host_prog | :lua =vim.g.python3_host_prog
    python3_host_prog = vim.fn.expand("~/.venv/bin/python"),
  },
  opt = { -- vim.opt.
    -- list = true,
    listchars = { tab = ">·", eol = "·" },
    colorcolumn = "80",
  },
}
