
" Vundle Stuff

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
" Must Run 
" cd ~/.vim/bundle/YouCompleteMe
" python install.py --clang-completer --ts-completer

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'dense-analysis/ale'

" Colors
Plugin 'flazz/vim-colorschemes'

"Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'joshdick/onedark.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'sickill/vim-monokai'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/peaksea'

" SML
Plugin 'jez/vim-better-sml'
Plugin 'chclouse/tiger-vim'

" Typescript Things
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-react-snippets'
Plugin 'honza/vim-snippets' "optional

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""" Put your non-Plugin stuff after this line """"""""""""""" 

syntax on
set backspace=indent,eol,start  " more powerful backspacing
set tabstop=2
set number
set autoindent
set clipboard=unnamed
set autoread

" Color Config 

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

highlight Normal guibg=black guifg=white
set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
let g:palenight_terminal_italics=1

" You Complete Me Configs
let g:ycm_python_binary_path = "python""
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

" NERDTree Configs
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "NerdTree Close if last thing open


" Typescript Config
" dark red
hi tsxTagName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic


" Util Snips
let g:UltiSnipsExpandTrigger="<c-l>"
