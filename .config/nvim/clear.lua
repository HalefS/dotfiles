local function clearBackground()
    vim.cmd('highlight TelescopeBorder guibg=none')
    vim.cmd('highlight TelescopeNormal guibg=none')
    vim.cmd('highlight TelescopeTitle guibg=none')
    vim.cmd('highlight TelescopeMatching guibg=none')
    vim.cmd('highlight TelescopeTitle guibg=none')
    vim.cmd('highlight TelescopePromptNormal guibg=none')
    vim.cmd('highlight TelescopePromptPrefix guibg=none')
    vim.cmd('highlight TelescopeSelection guibg=none')
    vim.cmd('highlight TelescopeSelectionCarret guibg=none')
end

clearBackground()
