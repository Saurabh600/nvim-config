require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    cpp = {
      require("formatter.filetypes.cpp").clangformat,
    },
    python = {
      require("formatter.filetypes.python").black,
    },
    go = {
      require("formatter.filetypes.go").gofmt,
      require("formatter.filetypes.go").golines,
      require("formatter.filetypes.go").goimports,
    },
    html = {
      require("formatter.filetypes.html").prettierd,
    },
    css = {
      require("formatter.filetypes.css").prettierd,
    },
    json = {
      require("formatter.filetypes.json").prettierd,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettierd,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettierd,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettierd,
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },
    markdown = {
      require("formatter.filetypes.markdown").prettierd,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})
