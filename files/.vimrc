syntax on
set autoindent
set tabstop=4
set expandtab
set nonumber
set linespace=3
set guifont=Fira\ Code:h12
set cursorline


set nocompatible              " be iMproved, required

let mapleader = ","
let maplocalleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-dispatch'
Plugin 'honza/vim-snippets'
Plugin 'williamjameshandley/vimteractive'
Plugin 'frazrepo/vim-rainbow'
Plugin 'tpope/vim-repeat'
Plugin 'clojure-vim/async-clj-omni'
Plugin 'vim-airline/vim-airline'
" Plugin 'guns/vim-sexp'
Plugin 'surround.vim'
Plugin 'lervag/vimtex'
Plugin 'derekwyatt/vim-scala'
"jPlugin 'SirVer/ultisnips'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'venantius/vim-eastwood'
" Plugin 'venantius/vim-cljfmt'
" Plugin 'Chiel92/vim-autoformat'
" Paredit does weird stuff with brakets, try sexp instead
Plugin 'vim-scripts/paredit.vim'
Plugin 'LnL7/vim-nix'

call vundle#end()            " required
filetype plugin indent on    " required
"

" colorscheme gruvbox
let g:rainbow_active = 1


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_clojure_checkers = ['eastwood']


" Cljfmt options                    
let g:clj_fmt_autosave = 0
let g:clj_fmt_config = '{:indentation? true, :remove-surrounding-whitespace? true, :remove-trailing-whitespace? true, :remove-consecutive-blank-lines? false, :insert-missing-whitespace? true, :align-associative? false, :indents {#"^\w" [[:inner 0]], #".*" [[:inner 0]]}}'

" zprint

func! ZprintFormat()
        let save_cursor = getcurpos()
        exe '%!zprint'
        call setpos('.', save_cursor)
endfunc

" autocmd  BufWritePre *.clj  call ZprintFormat()
" autocmd  BufWritePre *.edn  call ZprintFormat()




" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set nospell
set spelllang=en
