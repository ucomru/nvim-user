return {
  before_init = function(_, c)
    -- default pythonPath
    -- local pythonPath = vim.fn.expand "~/.venv/bin/python"
    local pythonPath = vim.g.python3_host_prog
    -- if virtual environment detected
    if os.getenv "VIRTUAL_ENV" then pythonPath = vim.fn.exepath "python" end

    -- safely set `pythonPath` in the `pyright` settings
    if not c.settings then c.settings = {} end
    if not c.settings.python then c.settings.python = {} end
    c.settings.python.pythonPath = pythonPath
  end,
}
