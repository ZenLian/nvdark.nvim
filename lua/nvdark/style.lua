local M = {}
local config = require('nvdark.config').options

for group, enable in pairs(config.italic) do
    if config.italic.enable and enable then
        M[group] = 'italic'
    else
        M[group] = 'NONE'
    end
end

return M
