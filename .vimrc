set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Shougo/vimproc', {'build': {'mac': 'make -f make_mac.mak'}}

" TODO: get rid of vim-sensible
Plugin 'tpope/vim-sensible'        " sane general defaults
Plugin 'tpope/vim-repeat'          " makes some plugins repeatable
Plugin 'tpope/vim-abolish'         " I mostly use :S for smart replace
Plugin 'tpope/vim-fugitive'        " git stuff, mostly :Gblame
Plugin 'tpope/vim-surround'        " add and change braces and quotes
Plugin 'tpope/vim-unimpaired'      " list navigation, option toggling
Plugin 'tpope/vim-commentary'      " motion to comment out ranges
Plugin 'tpope/vim-sleuth'          " automatic indentation settings
Plugin 'tpope/vim-dispatch'        " run commands in background
Plugin 'tpope/vim-speeddating.git' " increment dates and times
Plugin 'tpope/vim-tbone'           " interact with tmux panes
Plugin 'idanarye/vim-merginal'     " work with git branches

Plugin 'coderifous/textobj-word-column.vim' " work on columns
Plugin 'michaeljsmith/vim-indent-object'    " work same indentation
Plugin 'jeetsukumaran/vim-indentwise'       " move by indentation

Plugin 'ntpeters/vim-better-whitespace'  " show and fix trailing space
Plugin 'nelstrom/vim-qargs'              " populate args with quickfix files
Plugin 'osyo-manga/vim-over'             " interactive substitution
Plugin 'AndrewRadev/linediff.vim'        " diff blocks of lines
" Plugin 'vim-scripts/diffchar.vim'        " show diffs character by character (messes with unimpaired maps)
Plugin 'rking/ag.vim'                    " search in local files :Ag
Plugin 'kien/ctrlp.vim'                  " fuzzy find files
Plugin 'tommcdo/vim-lion'                " align operator glip'
Plugin 'tommcdo/vim-exchange'            " operator to exchange text
Plugin 'tommcdo/vim-ninja-feet'          " operate to ends of text objects
Plugin 'bruno-/vim-vertical-move'        " move up and down in same column
Plugin 'epeli/slimux'                    " interact with tmux panes
Plugin 'airblade/vim-gitgutter'          " show git changes with signs
Plugin 'kshenoy/vim-signature'           " show and navigate marks
Plugin 'AndrewRadev/writable_search.vim' " search and replace across multiple files
Plugin 'idbrii/vim-mark'                 " highlight different words
Plugin 'wellle/vim-visual-star-search'   " search for visual selection (restore register)
Plugin 'haya14busa/incsearch.vim'        " highlight all incsearch matches
Plugin 'majutsushi/tagbar'               " tagbar shows definition
Plugin 'scrooloose/nerdtree'               " tagbar shows definition
Plugin 'Valloric/YouCompleteMe'

" language support
Plugin 'b4winckler/vim-objc'           " objective c
Plugin 'vim-scripts/javacomplete'      " java
Plugin 'kana/vim-filetype-haskell'     " haskell
Plugin 'tpope/vim-markdown'            " markdown
Plugin 'fatih/vim-go'                  " go
Plugin 'exu/pgsql.vim'                 " postgres syntax highlighting
Plugin 'wellle/vim-simpledb'           " sql repl (switch mappings)

" color schemes
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'chriskempson/base16-vim'
Plugin 'wellle/vim-colors-solarized'
Plugin 'mtglsk/mushroom'
Plugin 'wellsjo/wells-colorscheme.vim'
Plugin 'ajgrf/sprinkles'
Plugin 'vim-scripts/random.vim' " pseudo colorscheme to pick random one
Plugin 'neohuang/neo-hybrid' "custom hybrid scheme

Plugin 'wellle/targets.vim'       " advanced text objects
Plugin 'wellle/tmux-complete.vim' " complete words from panes
Plugin 'wellle/grapple.vim'       " yank without moving

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set langmenu=en

if has("multi_byte")
  set encoding=utf-8
  set fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif
set number
filetype on
filetype plugin on
filetype indent on

set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set nobackup
set noswapfile
set ignorecase
set smartcase
set textwidth=79
set colorcolumn=85
set number

let mapleader=","
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}
inoremap (	()<Left>
inoremap (<CR>	(<CR>)<Esc>O
inoremap ((	(
inoremap ()	()
inoremap [	[]<Left>
inoremap [<CR>	[<CR>]<Esc>O
inoremap [[	[
inoremap [] []
let g:tagbar_ctags_bin= '/usr/local/bin/ctags'
nmap <F5> :GoTest<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :NERDTree<CR>
nmap Q :NERDTree<CR>

nnoremap gp `[v`]
" move up in screen line
nnoremap j gj
" move down in screen line
nnoremap k gk
" delete highlight of search
nnoremap <leader><space> :noh<cr>
" fold tag
nnoremap <leader>ft Vatzf
" paste external text
nnoremap <leader>p "*p
vnoremap <leader>p "*p
" replace current word with paste buffer
nnoremap <leader>w viw"0p
" copy to clip
vnoremap <leader>y "*y
nnoremap <leader>y V"*y
" select last pasted text
nnoremap <leader>v V`]
" exchnage lines
nnoremap <leader>x ddp
" exchnage lines with above
nnoremap <leader>X ddkP
" movements between window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" split window
map - :split<CR>
map ! :vsplit<CR>
" quick resize window
" map - <C-W>-
" map + <C-W>+
" quick resize verticle window
map <leader>< <C-w>5<
map <leader>> <C-w>5>
" search current selected text
vnoremap // y/<C-R>"<CR>
" map shortcut to discard uncommitted change
nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
" go related setting
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
let g:tmuxcomplete#trigger = 'omnifunc'
set diffopt=vertical

colorscheme neo-hybrid

" commands
command! -nargs=1 Gos call GoSearchFn(<f-args>)

" change cursor style in insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

function! GoSearchFn(text)
  silent execute "grep -Fi " . a:text . " **/*.go"
  redraw!
  cw
endfunction

function! Startup()
  if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=999 columns=9999
  endif
  " if 0 == argc()
  "  NERDTree
  " endif
endfunction


autocmd VimEnter * call Startup()


