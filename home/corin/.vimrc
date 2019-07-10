filetype plugin on

" line number
set number relativenumber

" spaces
set shiftwidth=4 tabstop=4 expandtab

" syntax highlighting
syntax on

" set encoding
set encoding=utf-8

" vimwiki
set nocompatible
let g:vimwiki_list = [{'path': '~/notebook', 'syntax': 'markdown', 'ext': '.md'}]

" vimtex
let g:vimtex_view_method = 'zathura'

" utilsnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" spellcheck
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" showcmd
set showcmd

" mouse
set mouse=a

" tab completion in menu
set wildmenu

" file manager
let g:netrw_banner = 0

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
