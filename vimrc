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
set autoindent

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

" delimit words by underscore
set iskeyword-=_

" Or, when you want wrapping...
" set wrap
" set linebreak
" set nolist

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/cache/**/*,tmp/**,public/system/**/*,log/*

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

" pasting
nmap <Leader>po :set paste<CR>
nmap <Leader>pp :set nopaste<CR>

" Command-T
" If Command-T is slow as <Leader>t, make sure that nothing is bound
" to <Leader>t* or it'll appear slow
let g:CommandTMaxHeight=15
nmap <F4> :CommandTFlush<CR>

" flush the command T cache on focus or save
augroup CommandTExtension
  autocmd!
  autocmd FocusGained * CommandTFlush
  autocmd BufWritePost * CommandTFlush
augroup END

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>
nmap <F8> :TagbarToggle<CR>

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
au BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" Coffeescript folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" show hamlc as haml
au BufRead,BufNewFile *.hamlc set ft=haml

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
nmap <S-k> [e
nmap <S-j> ]e
" Bubble multiple lines
vmap <S-k> [egv
vmap <S-j> ]egv

" each access to bol and eol
nmap <S-h> ^
vmap <S-h> ^
nmap <S-l> $
vmap <S-l> $

" Enable TAB indent and SHIFT-TAB unindent in visual mode
vnoremap <silent> <TAB> >gv
vnoremap <silent> <S-TAB> <gv

" Use modeline overrides
set modeline
set modelines=10

" No swappy swappies
set noswapfile

" Default color scheme
set background=dark
color solarized
call togglebg#map("<F5>")

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Show (partial) command in the status line
set showcmd

" Control s for saving
" In Mac OSX remember to turn off trapping C-s
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc>:w<CR>

" And a correlary for closing
nmap <C-q> :q<CR>
imap <C-q> <Esc>:q<CR>
vmap <C-q> <Esc>:q<CR>

" ctrl shift s for save all
" nmap <C-S-s> :wa<CR>
" imap <C-S-s> <Esc>:wa<CR>
" vmap <C-S-s> <Esc>:wa<CR>

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
imap <C-r> <Space>=><Space>

" Use the damn hjkl keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" better window jumping
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" do the same for the much faster C-c
" And quiet it down when hit in command mode
imap <C-c> <C-c>`^
nmap <C-c> <nop>
vmap <C-c> <ESC>

inoremap <F2> <C-c>`^
vmap  <F2> <C-c>
cmap  <F2> <C-c>

" sorting with a leader
vmap <Leader>s :!sort<CR>

" reload vimrc
nmap <Leader>r :source ~/.vimrc<CR>

" OH MY ZSH!
set shell=/bin/zsh

" Add this type definition to your vimrc
" or do
" coffeetags --vim-conf >> <PATH TO YOUR VIMRC>
" if you want your tags to include vars/objects do:
" coffeetags --vim-conf --include-vars
 let g:tagbar_type_coffee = {
  \ 'kinds' : [
  \   'f:functions',
  \   'o:object'
  \ ],
  \ 'kind2scope' : {
  \  'f' : 'object',
  \   'o' : 'object'
  \},
  \ 'sro' : ".",
  \ 'ctagsbin' : 'coffeetags',
  \ 'ctagsargs' : ' ',
  \}
