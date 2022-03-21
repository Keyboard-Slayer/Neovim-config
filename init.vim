call plug#begin(stdpath('data') . '/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()

lua <<EOF
require 'nvim-tree'.setup{}
require 'nvim-cmp-config'
EOF

set nu
set laststatus=0 ruler
set guicursor=i:block
set mouse=a
set termguicolors
set completeopt=menu,menuone,noselect

let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>l <cmd>BufferNext<cr>
nnoremap <leader>h <cmd>BufferPrevious<cr>
nnoremap <leader>c <cmd>BufferClose<cr>
nnoremap <leader>n <cmd>enew<cr>

nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>tr <cmd>NvimTreeRefresh<cr>
nnoremap <leader>ts <cmd>NvimTreeFindFile<cr>
