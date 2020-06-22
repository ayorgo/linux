autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd TextChanged,TextChangedI * silent write

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

set number
filetype on
syntax on

let g:python_highlight_all = 1
colorscheme codedark

let g:indentLine_char = '▏'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'

