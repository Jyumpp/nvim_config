local M =  {
    'HallerPatrick/py_lsp.nvim',
    event = 'BufRead',
}

M.config = function()
    require('py_lsp').setup{}
end

return M
