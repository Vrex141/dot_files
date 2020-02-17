syntax on
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent 
set list
set listchars=tab:>-

set et 
set autowrite
set showmatch
set hlsearch
set incsearch
set ignorecase

set number
highlight LineNr ctermfg=green

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_debug = 3
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 3
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_vue_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_pug_checkers = ['eslint']
let g:syntastic_pug_eslint_exe = '$(npm bin)/eslint'
let g:move_key_modifier = 'C'

" NERDTree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

nnoremap<F6> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" FZF
nnoremap <C-f> :GFiles<CR>
nnoremap <C-l> :Lines<CR>
nnoremap <C-g> :Rg<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'posva/vim-vue'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'ngmy/vim-rubocop'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-pug'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'matze/vim-move'

call plug#end()

colorscheme nord
