" NERD Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Convenient copy/paste
set clipboard=unnamedplus

" Autosave as you type
" autocmd TextChanged,TextChangedI * silent write

" Tabs as spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Ruler
set colorcolumn=80,100

" Search
set hlsearch
set ignorecase
set smartcase

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

set number
filetype on
syntax on

" Syntax highlighting
let g:python_highlight_all = 1
colorscheme codedark

" Indentation
let g:indentLine_char = '▏'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'

"
" Key mappings
"

" Move line up and down (gvim only)
nnoremap <A-j> :m +1<CR>==
nnoremap <A-k> :m -2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
