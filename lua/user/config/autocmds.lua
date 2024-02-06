local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- custom indent for specific filetypes
augroup("__custom_indent__", { clear = true })
autocmd({ "BufEnter", "BufWinEnter" }, {
  group = "__custom_indent__",
  pattern = { "*.js", "*.ts", "*.json", "*.lua" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- auto format on save
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
  group = "__formatter__",
  command = ":FormatWrite",
})
