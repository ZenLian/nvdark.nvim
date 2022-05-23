local config = {}

-- default options
config.options = {
    -- turn italic on/off
    italic = {
        enable = false, -- set to false will disable all italics below
        comment = true,
        todo = false,
        markdown = true,
        parameter = true,
    },
    diagnostic = {
        -- true to enable diagnostic virtual text color
        colorful_virtual_text = false,
    },
    -- TODO: not supported yet
    better_performence = false,
}

-- update options
config.update = function(options)
    config.options = vim.tbl_deep_extend("force", config.options, options)
end

return config
