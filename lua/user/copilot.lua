local M = {
    "github/copilot.vim",
    lazy = true,
    event = "VeryLazy",
    priority = -10,
}

function M.config()
  vim.keymap.set("i", "<C-a>", "copilot#Accept('<CR>')", {silent = true, expr=true, replace_keycodes = false})
  
end

return M
