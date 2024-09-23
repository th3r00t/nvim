local neorg = require('neorg')

-- Global function to export based on metadata
function _G.export_based_on_meta()
    local current_buf = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(current_buf, 0, -1, false)

    local meta_data = {}
    local in_meta_block = false

    -- Parse metadata from the Neorg file
    for _, line in ipairs(lines) do
        if line:match("^@document%.meta") then
            in_meta_block = true
        elseif line:match("^@end") and in_meta_block then
            in_meta_block = false
        elseif in_meta_block then
            local key, value = line:match("^(%w+):%s*(.*)")
            if key and value then
                meta_data[key] = value
            end
        end
    end

    -- Default values if metadata fields are missing
    local format = meta_data['format'] or "markdown"
    local filename = meta_data['filename'] or "exported_file"
    local directory = meta_data['directory'] or vim.fn.getcwd() -- defaults to current working directory

    -- Normalize common format abbreviations
    if format == "md" then
        format = "markdown"
    elseif format == "htm" then
        format = "html"
    end

    -- Supported formats list
    -- local supported_formats = { markdown = true, html = true }

    -- Check if the format is supported
    -- if not supported_formats[format] then
    --     print("Error: Unsupported export format '" .. format .. "'. Supported formats are 'markdown' and 'html'.")
    --     return
    -- end

    -- Ensure the directory exists
    if vim.fn.isdirectory(directory) == 0 then
        vim.fn.mkdir(directory, "p")
    end

    -- Construct full path
    local full_path = directory .. "/" .. filename .. "." .. format

    -- Perform export based on the format
    neorg.modules.get_module('core.export').public.run_exporter(format, {
        input_file = vim.api.nvim_buf_get_name(current_buf),
        output_file = full_path,
    })

    print("Exported to: " .. full_path)
end

-- Bind the function to a keymap
vim.api.nvim_set_keymap('n', '<Leader>e', ':lua export_based_on_meta()<CR>', { noremap = true, silent = true })
