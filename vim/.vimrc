" global settings
set nocompatible
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
colorscheme mustang             " load the mustang colorscheme
set number                      " activate line numbers
set t_Co=256                    " set 256 colors as everything supports it
set scrolloff=9999              " show as much context as possible
set history=500                 " keep 5000 lines of commands

"" Whitespace
set wrap                        " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch             " highlight matches
set incsearch            " incremental searching
set ignorecase           " searches are case insensitive...
set smartcase            " ... unless they contain at least one capital letter
set cursorline           " highlight the line of the cursor

if version >=703
  set colorcolumn=80     " mark column 80 as a limit
endif

"" command remappings
" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"" module settings
if has("autocmd")
  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
