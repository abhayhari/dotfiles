-- ~/.config/nvim/init.lua

-- relative line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- colors are rendered at full quality
vim.opt.termguicolors = true

-- color scheme
vim.cmd.colorscheme('pablo')

-- keep cursor away from screen edges
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false

-- prompt instead of failing on unsaved changes
vim.opt.confirm = true

-- search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- preview substitutions in a split
vim.opt.inccommand = 'split'

-- command-line completion: longest prefix first, then cycle matches
vim.opt.wildmode = 'longest:full,full'

-- trigger CursorHold-driven UI sooner; swap file written more often
vim.opt.updatetime = 250

-- persistent undo, stored outside project directories
local undodir = vim.fn.stdpath('state') .. '/undo'
vim.fn.mkdir(undodir, 'p')
vim.opt.undodir = undodir
vim.opt.undofile = true

-- silence bells
vim.opt.belloff = 'all'

-- skip the intro message
vim.opt.shortmess:append('I')

-- Plugins
vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

-- Language servers
vim.lsp.enable({ 'gopls', 'pyright' })

-- Folds 
vim.opt.foldlevelstart = 99

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go' },
  callback = function()
    vim.wo.foldmethod = 'syntax'   -- window-local option
  end,
})
