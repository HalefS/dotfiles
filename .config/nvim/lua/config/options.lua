-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false


-- Make line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

vim.o.background = "dark" -- or "light" for light mode

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300


-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.o.showmatch = true

vim.o.linespace = 0


-- [[ Vim Commands ]]
local o = vim.o
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true
-- set nowrap                      " Do not wrap long lines
-- set autoindent                  " Indent at the same level of the previous line
-- set shiftwidth=4                " Use indents of 4 spaces
-- set expandtab                   " Tabs are spaces, not tabs
-- set tabstop=4                   " An indentation every four columns
-- set softtabstop=4               " Let backspace delete indent
-- set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
-- set splitright                  " Puts new vsplit windows to the right of the current
-- set splitbelow                  " Puts new split windows to the bottom of the current

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
