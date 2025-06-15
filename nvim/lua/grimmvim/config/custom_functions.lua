-- toggle conceallevel
function ToggleConcealLevel()
	if vim.wo.conceallevel == 0 then
		vim.wo.conceallevel = 2
	else
		vim.wo.conceallevel = 0
	end
end

-- automatically create a file if it does not exist
function OpenFile()
	local filepath = vim.fn.expand("<cfile>")
	if vim.fn.filereadable(filepath) == 0 then
		-- Create and open the file
		vim.cmd("edit " .. filepath)
		print("Created new file: " .. filepath)
	else
		-- Open the existing file
		vim.cmd("edit " .. filepath)
	end
end

-- Save original
local open = vim.lsp.util.open_floating_preview
-- Override
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or "rounded"
	opts.max_width = opts.max_width or 80 -- max width in columns
	opts.max_height = opts.max_height or 20 -- optional max height in lines
	opts.wrap = opts.wrap == nil and true or opts.wrap
	opts.wrap_at = opts.wrap_at or opts.max_width
	return open(contents, syntax, opts, ...)
end
