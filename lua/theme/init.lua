vim.cmd('highlight clear')

if vim.fn.exists('syntax_on') then
	vim.cmd('syntax reset')
end

local utils = require('core.utils')

vim.o.background = 'dark'
vim.o.termguicolors = true

local highlight_groups = {
	base = { 'base', 'highlight_groups' },
	syntax = {
		'base',
		'lua',
		'vim',
		'javascript',
		'java',
		'json',
		'ruby',
		'xml',
		'css',
		'html',
		'markdown',
		'rasi',
	},
}

local highlights = {}

for _, module in ipairs(highlight_groups.base) do
	highlights = require('theme.' .. module)
	utils.set_highlights(highlights)
end

for _, module in ipairs(highlight_groups.syntax) do
	highlights = require('theme.syntax.' .. module)
	utils.set_highlights(highlights)
end
