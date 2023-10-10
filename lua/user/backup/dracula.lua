local M = {
  "Mofiqul/dracula.nvim",
  lazy= false,
}

function M.config()
  require("dracula").setup {}
end

return M
