require("lint").linters_by_ft = {
  -- cpp = { "cpplint" },
  -- python = { "mypy" },
  -- go = { "revive" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function() require("lint").try_lint() end,
})
