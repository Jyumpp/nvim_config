local M = {
    "github/copilot.vim",
    lazy = false,
    event = "VeryLazy",
    priority = 2000
}

function M.config()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_no_cr_map = true
    vim.api.nvim_set_keymap("i", "<S-Space>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
 --   vim.g.copilot_assume_mapped = true
end

return M
