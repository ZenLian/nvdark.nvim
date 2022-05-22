local M = {}

M.setup = function(options)
    require('nvdark.config').update(options)
end

-- apply colorscheme
M.load = function()
    vim.cmd [[highlight clear]]
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "nvdark"

    local util = require('nvdark.util')
    local theme = require('nvdark.theme')
    util.load(theme)
end

return M
