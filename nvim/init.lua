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
vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nvim-treesitter/nvim-treesitter',
})

-- Language servers
vim.lsp.enable({ 'gopls', 'pyright' })

-- Tree-sitter parsers (async; no-op once installed)
require('nvim-treesitter').install({ 'go', 'python' })

-- Tree-sitter syntax highlighting (pcall: skip filetypes with no parser)
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Folds
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
