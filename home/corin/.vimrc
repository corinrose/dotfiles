filetype plugin on

" line number
set number relativenumber

" spaces
set shiftwidth=4 tabstop=4 expandtab

" syntax highlighting
syntax on

" set encoding
set encoding=utf-8

" spellcheck
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" tagbar
nmap \t :TagbarToggle<CR>

" vimtex
nmap \c :VimtexTocToggle<CR>

" showcmd
set showcmd

" mouse
set mouse=a

" tab completion in menu
set wildmenu

" file manager
let g:netrw_banner = 0
let g:netrw_liststyle = 3
nmap \v :Vex<CR>
nmap \b :Sex<CR>
nmap \e :Ex<CR>

" fuzzy search
nmap \f :FZF<CR>

" window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Plugins

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


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

