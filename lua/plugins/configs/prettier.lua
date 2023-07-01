local M = {}

M.setup = function()
  local status, prettier = pcall(require, "prettier")

  if (not status) then return end

  prettier.setup {
    bin = 'prettierd',
    filetypes = {
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
      "scss",
      "less"
    }
  }
end

return M