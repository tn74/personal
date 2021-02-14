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

" Use filetype detection
filetype plugin on

" Show file path in git repo in lightline.
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
