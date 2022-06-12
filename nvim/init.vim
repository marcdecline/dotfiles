set number 
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set cursorline

call plug#begin('~/.nvim/plugged')
  " Themes
  Plug 'tomasr/molokai'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'Mofiqul/vscode.nvim'

  Plug 'easymotion/vim-easymotion' " Buscar
  Plug 'scrooloose/nerdtree' " Arbre directoris
  Plug 'christoomey/vim-tmux-navigator' " Navegar entre instàncies (com nt)
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Omplir text com tipus vscode
  Plug 'nvim-lualine/lualine.nvim' " barra estat inferior
  Plug 'kyazdani42/nvim-web-devicons' " icones barra

  call plug#end()

let mapleader=' '

lua require('lualine').setup()
let g:webdevicons_enable_startify = 1

" Vim-Script:
" For dark theme (neovim's default)
set background=dark
" For light theme
" set background=light
" Enable transparent background
let g:vscode_transparency = 1
" Enable italic comment
let g:vscode_italic_comment = 1
" Disable nvim-tree background color
let g:vscode_disable_nvimtree_bg = v:true
colorscheme vscode

nmap <Leader>f <Plug>(easymotion-s2) 
nmap <Leader>t :NERDTreeFind<CR>

" Enllaços personalitzats
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>s :wq<CR>
nmap <Leader>g gg=G<CR>
