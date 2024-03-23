-- :let -- get all var
return {  
  opt = { -- vim.opt.
    -- list = true,
    listchars = { tab = ">·", eol = "·" },
    colorcolumn = "80",
  },
  g = { -- vim.g.
    -- python3 -m venv .venv && source .venv/bin/activate && pip install pynvim
    -- :lua =vim.b.gitsigns_status_dict['root'] -- package root path
    -- :echo g:python3_host_prog | :lua =vim.g.python3_host_prog
    -- :lua vim.g.python3_host_prog=vim.fn.exepath('python')
    python3_host_prog = "~/.venv/bin/python",
  },
}
