" use vim rather than vi settings
" must be set first!
set nocompatible

" make vim behave like other editors (work on multiple unsaved files)
set hidden

" ==================== SYNTAX ====================

syntax enable
filetype plugin on
filetype indent on
set encoding=utf8

" ==================== SEARCH ====================

set ignorecase
set smartcase
set hlsearch
set incsearch    " work like browser M-f

" ==================== INDENTATION ====================

set autoindent
set smartindent

" tabs
set smarttab
set shiftwidth=4
set softtabstop=4
set expandtab
" set tabstop=2    " default=4

" indentation markers
set list
set listchars=tab:▸\ ,eol:¬

" ==================== GENERAL ====================

set backspace=indent,eol,start
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom

set magic
set showmatch

set noerrorbells
set novisualbell

" Strip whitespace from the end of all files
autocmd BufWritePre * :%s/\s\+$//e


" ==================== MAPPINGS ====================

" Map <C-L> (redraw screen)
" also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>                                             
                             
" Map Control-N to toggle line numbers
nnoremap <C-N> :set invnumber<CR>     
                                      
" Map F5/F6 to toggle tabs
nnoremap <F6> :tabn<CR>
nnoremap <F5> :tabp<CR>
