syntax on
set number
set autoindent
set tabstop=2
colorscheme default

set nocompatible              " be iMproved, required
filetype off                  " required

" first clear any existing autocommands:
autocmd!

" have fifty lines of command-line (etc) history:
set history=50

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" don't have files trying to override this .vimrc:
set nomodeline

" don't make it look like there are line breaks where there aren't:
set nowrap

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" enable filetype detection:
filetype on

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=2

syntax on

set nocompatible                  " Must come first because it changes other options.

syntax on			" Turn on syntax highlightin
filetype plugin indent on	" Turn on file type detection

set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set smartindent                   " Auto Indent when you hit enter

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set wrap                          " Turn on line wrapping.
set scrolloff=10                  " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" Useful status information at bottom of screen
set statusline+=\[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time

" Auto-complete and auto format parenthesis, curly braces, and square
" brackets
inoremap {      {}<Left><Left>
inoremap {<CR>  {<CR>}<Esc>O<Tab>
inoremap {}     {}
inoremap {{     {{

inoremap (      ()<Left><Left>
inoremap (<CR>  (<CR>)<Esc>O<Tab>
inoremap ()     ()
inoremap ((     ((

inoremap [      []<Left><Left>
inoremap [<CR>  [<CR>]<Esc>O<Tab>
inoremap []     []
inoremap [[     [[

inoremap <      <><Left><Left>
inoremap <<CR>  <<CR>><Esc>O<Tab>
inoremap <     <>
inoremap <<     <<

" TypeScript Syntax
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
