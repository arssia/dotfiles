call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'for': ['go'] }
call plug#end()

" color theme
set background=light
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  set termguicolors
  source ~/.vimrc_background
endif

filetype plugin indent on
set updatetime=100
set number
set relativenumber
set ruler
set cursorline
set autoread
set laststatus=2
set nofoldenable
set hlsearch
set expandtab
set encoding=utf8
set showmatch " show matching braces
set wrap " line wraping on
set clipboard=unnamed   " copy to system clipboard, not vim
set autoread            " watch file change and reload it
set autoindent          " automatic identation
set smartindent
set cursorline        " line highlight
set incsearch         " search as you type
set smartcase         " case-sensitive search if any caps
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*
set completeopt-=preview

" Vim-airline Settings
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" shortcuts
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GitFiles<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>df :GoDef<CR>
nnoremap <Leader>ds :GoDescribe<CR>
nnoremap <Leader>dc :GoDoc<CR>

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()


