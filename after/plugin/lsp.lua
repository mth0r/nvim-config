local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
	'rust_analyzer',
    'bashls',
    'pyright'
})

local cmp = require('cmp')
cmp.setup({
    enabled = true,
    preselect = cmp.PreselectMode.None,
    sources = {
        {name = 'nvim_lsp'}
    }
})
local cmp_select = { behavior = cmp.SelectBehavior.Select }
--local cmp_select = { behavior = cmp.SelectBehavior.Insert }

local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
--  ['<C-y>'] = cmp.mapping.confirm({ select = false }),
  ["<C-Space>"] =  cmp.mapping.confirm({ select = true }),
--  ['<CR>'] = cmp.mapping.confirm({ select = false }),
--  ['<CR>'] = cmp.mapping.confirm {
--      behavior = cmp.ConfirmBehavior.Replace,
--      select = false,
--    },
})

-- I can't figure this out, but disabling <CR> is the best way to not have to double press enter
cmp_mappings['<CR>'] = nil

-- Tab is for copilot
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
--	sign_icons = { }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()


-- Gives text descriptions after line
vim.diagnostic.config({
    virtual_text = true
})

-- Disable auto selection of first item
vim.opt.completeopt = {"menuone", "noselect"}

