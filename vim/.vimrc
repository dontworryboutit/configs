"""" My config

syntax on
set secure
set number
set ai
set si
set scrolloff=999999
set nohlsearch

let mapleader=","
inoremap jj <ESC>
"set paste!


" Gotta be first
set nocompatible

" ----- Vundle settings

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'dracula/vim'
  Plugin 'tomasr/molokai'
  Plugin 'bling/vim-airline'
  Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

  
  " ----- Vim as a programmer's text editor -----------------------------
    Plugin 'scrooloose/nerdtree'
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'scrooloose/syntastic'
    Plugin 'xolox/vim-misc'
    Plugin 'xolox/vim-easytags'
    Plugin 'majutsushi/tagbar'
    Plugin 'kien/ctrlp.vim'
    Plugin 'vim-scripts/a.vim'

    Plugin 'christoomey/vim-tmux-navigator'

" ----- Working with Git ----------------------------------------------
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-fugitive'

  " ----- Other text editing features -----------------------------------
    Plugin 'Raimondi/delimitMate'
  


call vundle#end()

filetype plugin indent on
" =================================

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax enable
set mouse=a


" ----- Plugin-Specific Settings --------------------------------------
"
  " ----- altercation/vim-colors-solarized settings -----
  " Toggle this to "light" for light colorscheme
  set background=light

  " Uncomment the next line if your terminal is not configured for solarized
  let g:solarized_termcolors=256

  " Set the colorscheme
  "colorscheme darcula
  color dracula


  " ----- bling/vim-airline settings -----
  " Always show statusbar
  set laststatus=2

  " Fancy arrow symbols, requires a patched font
  " To install a patched font, run over to
  "     https://github.com/abertsch/Menlo-for-Powerline
  " download all the .ttf files, double-click on them and click "Install"
  " Finally, uncomment the next line
  "let g:airline_powerline_fonts = 1

  " Show PASTE if in paste mode
  let g:airline_detect_paste=1

  " Show airline for tabs too
  let g:airline#extensions#tabline#enabled = 1


" ----- jistr/vim-nerdtree-tabs -----
  " Open/close NERDTree Tabs with \t
  nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
  " To have NERDTree always open on startup
  let g:nerdtree_tabs_open_on_console_startup = 0



" ----- scrooloose/syntastic settings -----
  let g:syntastic_error_symbol = '✘'
  let g:syntastic_warning_symbol = "▲"
  augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
  augroup END


" ----- xolox/vim-easytags settings -----
  " Where to look for tags files
  set tags=./tags;,~/.vimtags
  " Sensible defaults
  let g:easytags_events = ['BufReadPost', 'BufWritePost']
  let g:easytags_async = 1
  let g:easytags_dynamic_files = 2
  let g:easytags_resolve_links = 1
  let g:easytags_suppress_ctags_warning = 1

  " ----- majutsushi/tagbar settings -----
  " Open/close tagbar with \b
  nmap <silent> <leader>b :TagbarToggle<CR>
  " Uncomment to open tagbar automatically whenever possible
  "autocmd BufEnter * nested :call tagbar#autoopen(0)



" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END



"############# Syntax #################
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
