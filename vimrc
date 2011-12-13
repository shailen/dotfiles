set nocompatible

call pathogen#infect()
call pathogen#helptags()

set number
set ruler

" keep undo history for background buffers
set hidden

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

syntax on

" Key timeouts a for super spaz
set ttimeoutlen=50

" Set encoding
set encoding=utf-8

" keymaps
nnoremap ' `
nnoremap ` '

" mapleader
let mapleader=","

" history
set history=1000

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/cache/**/*,tmp/**

" Status bar
set laststatus=2

" scrolloff
set scrolloff=8

" scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" less annoying command prompt
set shortmess=atI

" dont annoy everybody
set visualbell

" Command-T
" If Command-T is slow as <Leader>t, make sure that nothing is bound
" to <Leader>t* or it'll appear slow
let g:CommandTMaxHeight=30

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Tabular configuration and shortcuts
map <Leader>a :Tabularize /
" Repeat it
map <Leader>A :Tabularize<CR>

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" Coffeescript folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-k> [e
nmap <C-j> ]e
" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv

" Enable TAB indent and SHIFT-TAB unindent in visual mode
vnoremap <silent> <TAB> >gv
vnoremap <silent> <S-TAB> <gv

" Use modeline overrides
set modeline
set modelines=10

" No swappy swappies
set noswapfile

" Default color scheme
color molokai

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Show (partial) command in the status line
set showcmd

" Control s for saving
" In Mac OSX remember to turn off trapping C-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

" And a correlary for closing
nmap <C-q> :wq<CR>
imap <C-q> <Esc>:wq<CR>

" Easy tab switching
noremap <M-j> gT
noremap <M-k> gt

if has("mouse")
  set mouse=a
  set mousehide
endif

" Hide search highlighting
map <Leader>h :let @/ = ""<CR>

" Maps autocomplete to tab
imap <Tab> <C-N>

" Hashrocket! L => LAZER
imap <C-L> <Space>=><Space>

" Use the damn hjkl keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" better window jumping
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-h> <C-w>h
map <S-l> <C-w>l

" do the same for the much faster C-c
" And quiet it down when hit in command mode
imap <C-c> <C-c>`^
vmap <C-c> <ESC>`^
nmap <C-c> <nop>

vmap  <F2> <C-c>
imap  <F2> <C-c>

" OH MY ZSH!
set shell=zsh
