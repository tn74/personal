
call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

"File Exploration
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status Line
Plug 'itchyny/lightline.vim'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Typescript and TSX
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'

" Plug 'sheerun/vim-polyglot'
call plug#end()

" Pane Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Color Scheme
set termguicolors
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

filetype plugin indent on

" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" Typescript and React syntax Highlighting 

" set filetypes as typescriptreact
"augroup SyntaxSettings
"    autocmd!
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
"augroup END

" " dark red
" hi tsxTagName guifg=#E06C75
" hi tsxComponentName guifg=#E06C75
" hi tsxCloseComponentName guifg=#E06C75
" 
" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxCloseTagName guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575
" 
" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic



