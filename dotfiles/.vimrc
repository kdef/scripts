call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'udalov/kotlin-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
call plug#end()

let g:go_fmt_command="goimports"
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1

" Enable filetype plugins
filetype plugin on
filetype indent on

" Disable banner on directory listing
let g:netrw_banner = 0
" Use a narrow tree style
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
" Open files in previous window
let g:netrw_browse_split = 4
" When entering vim, open the directory listing then move to the right window
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore | :execute "wincmd l"
augroup END

" Turn on the Wild menu
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Show line numbers
set number

" When searching try to be smart about cases
set ignorecase
set smartcase

" Highlight search results
set hlsearch
" highlight Search ctermbg=green

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Enable syntax highlighting
syntax enable

" colorscheme lucario
" set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \Column:\ %c

autocmd FileType c setlocal noexpandtab shiftwidth=4 tabstop=4
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4
autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType py setlocal shiftwidth=4 tabstop=4
autocmd FileType rb setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType ts setlocal shiftwidth=2 tabstop=2
autocmd FileType tsx setlocal shiftwidth=2 tabstop=2
