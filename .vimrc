filetype off                  " required
set number
set autoindent
set background=dark
let g:quantum_italics=1



" first clear any existing autocommands:
autocmd!



" have fifty lines of command-line (etc) history: set history=50

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" don't have files trying to override this .vimrc:
set nomodeline

" don't make it look like there are line breaks where there aren't:
set nowrap

" Prettier
" https://github.com/prettier/vim-prettier
packloadall

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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'fcpg/vim-orbital'

" Rainbow indent plugin
Plugin 'thiagoalessio/rainbow_levels.vim'


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" post install (yarn install | npm install) then load plugin only for editing supported files
" cd ~/.vim/bundle/vim-prettier and run 'yarn'

Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['java', 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"

" https://github.com/scrooloose/nerdtree
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plugin 'preservim/nerdtree' 

let g:python3_host_prog = '/path/to/python/executable/'
Plugin 'Chiel92/vim-autoformat'

Plugin 'ycm-core/YouCompleteMe'
let g:ycm_use_clangd = 0

" Get integration for NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

Plugin 'jparise/vim-graphql'

Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'pangloss/vim-javascript'
" TypeScript syntax highlighting
Plugin 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'

let g:javascript_plugin_jsdoc = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0



" Vim Orbital
let g:colors_name = "fcpg/vim-orbital"

" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

" All of your Plugins must be added 
" before the following line vundle#end()
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
map <C-n> :NERDTreeToggle<CR>


" Prettier
" `f` for "format"
nmap <leader>f <Plug>(Prettier)
let g:prettier#exec_cmd_async = 1

" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line

colorscheme orbital

" Rainbow Indent plugins
nnoremap <C-R> :RainbowLevelsOn<CR>
nnoremap <C-O> :RainbowLevelsOff<CR>

" reversed + dimmed blue “rainbow” for dark theme
highlight! RainbowLevel0 ctermbg=232 guibg=#010e1a
highlight! RainbowLevel1 ctermbg=233 guibg=#012c36
highlight! RainbowLevel2 ctermbg=234 guibg=#014553
highlight! RainbowLevel3 ctermbg=235 guibg=#015f70
highlight! RainbowLevel4 ctermbg=236 guibg=#01788d
highlight! RainbowLevel5 ctermbg=237 guibg=#0192aa
highlight! RainbowLevel6 ctermbg=238 guibg=#02adc6
highlight! RainbowLevel7 ctermbg=239 guibg=#1bb4e0
highlight! RainbowLevel8 ctermbg=240 guibg=#2dc3f1
