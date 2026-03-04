local lsp_array = {
  "lua_ls",
  "gopls",
  "ruby_lsp",
  "clangd",
  "rubocop",
  "ts_ls",
  "cssls",
  "docker_compose_language_server",
  "dockerls",
  "html",
  "postgres_lsp",
  "markdown_oxide",
  "bashls",
  "vimls",
  "tailwindcss",
  "tree-sitter-cli",
  "jsonls",
  "qmlls",
}

for _, v in ipairs(lsp_array) do
  vim.lsp.enable(v)
end

local severity = vim.diagnostic.severity

vim.diagnostic.config({
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})
