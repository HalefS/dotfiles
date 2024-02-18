local utils = require 'config.utils'
-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set('n', "<leader>ec", [[:echo "Hello World"]])
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', "<leader>u", ":UndotreeToggle<CR>")



-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- _ and $ remap
vim.keymap.set('n', 'gs', '_')
vim.keymap.set('n', 'gl', '$')

-- Zen Mode
vim.keymap.set('n', "<leader>zz", ":ZenMode<Enter>")

-- vert splig
vim.keymap.set('n', "<leader>vs", ":vsplit<Enter>")

-- Remap esc to jj
vim.keymap.set('i', "jj", "<esc>")

vim.keymap.set('i', "<C-g>", "<C-\\> <C-n>")

-- Misc
vim.keymap.set('n', "<leader>w", ":w<enter>")
vim.keymap.set('n', "<leader>x", ":x<enter>")
vim.keymap.set('n', "<space>cs", ":Telescope colorscheme<Enter>")
vim.keymap.set('n', "<space>gs", ":Telescope git_status<Enter>")
vim.keymap.set('n', "<leader>te", ":Telescope ")

vim.keymap.set(
    "c",
    "<Plug>(TelescopeFuzzyCommandSearch)",
    "<C-\\>e \"lua require('telescope.builtin').command_history "
    .. '{ default_text = [=[" . escape(getcmdline(), \'"\') . "]=] }"<CR><CR>',
    { silent = true, noremap = true }
)

-- Fugitive
vim.keymap.set('n', "<leader>gs", ":Git<Cr>")
vim.keymap.set('n', "<leader>go", ":GBrowse<Cr>")
vim.keymap.set('n', "<leader>gb", ":Git blame<Cr>")
vim.keymap.set('n', "<leader>gl", ":Git log<Cr>")

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)


-- make telescope windows background transparent
-- mainly used after reloading colorscheme, which breaks this condition
vim.keymap.set('n', "<leader>cl", function()
    utils.clearBackground()
end, {})

-- open common config files
vim.keymap.set('n', "<leader>vim", ":e ~/.config/nvim/init.lua<Enter>")
vim.keymap.set('n', "<leader>key", ":e ~/.config/nvim/lua/config/keymaps.lua<Enter>")
vim.keymap.set('n', "<leader>so", ":so ~/.config/nvim/init.lua<enter>")
vim.keymap.set('n', "<leader>tmux", ":e ~/.tmux.conf")
vim.keymap.set('n', "<leader>zsh", ":e ~/.zshrc")

-- Misc
vim.api.nvim_set_keymap("v", "<leader>rr", ":lua require('refactoring').select_refactor()<CR>",
    { noremap = true, silent = true, expr = false })
-- Go if err != nil
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err")

-- Source Graph Cody
vim.keymap.set("v", "<space>e", ":CodyExplain<Enter>")
vim.keymap.set("v", "<space>t", ":CodyToggle<Enter>")
vim.keymap.set("v", "<space>a", ":CodyAsk ")
vim.keymap.set("v", "<space>ut", ":CodyAsk can you write unit tests for this?<Enter>")

vim.keymap.set("n", "<leader>er", "oif err != nil {<CR>}<Esc>O ")

-- lsp
vim.keymap.set('n', "<leader>rs", ":LspRestart<Enter>") -- restart
vim.keymap.set('n', "<leader>lsp", ":LspInfo<Enter>")   -- info

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move Text around in visual mode
local opts = { noremap = true, silent = true }
vim.keymap.set('v', '<C-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<C-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<C-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<C-l>', ':MoveHBlock(1)<CR>', opts)
