set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {'build': {'mac': 'make -f make_mac.mak'}}

" TODO: get rid of vim-sensible
NeoBundle 'tpope/vim-sensible'        " sane general defaults
NeoBundle 'tpope/vim-repeat'          " makes some plugins repeatable
NeoBundle 'tpope/vim-abolish'         " I mostly use :S for smart replace
NeoBundle 'tpope/vim-fugitive'        " git stuff, mostly :Gblame
NeoBundle 'tpope/vim-surround'        " add and change braces and quotes
NeoBundle 'tpope/vim-unimpaired'      " list navigation, option toggling
NeoBundle 'tpope/vim-commentary'      " motion to comment out ranges
NeoBundle 'tpope/vim-sleuth'          " automatic indentation settings
NeoBundle 'tpope/vim-dispatch'        " run commands in background
NeoBundle 'tpope/vim-speeddating.git' " increment dates and times
NeoBundle 'tpope/vim-tbone'           " interact with tmux panes
NeoBundle 'idanarye/vim-merginal'     " work with git branches

NeoBundle 'coderifous/textobj-word-column.vim' " work on columns
NeoBundle 'michaeljsmith/vim-indent-object'    " work same indentation
NeoBundle 'jeetsukumaran/vim-indentwise'       " move by indentation

NeoBundle 'ntpeters/vim-better-whitespace'  " show and fix trailing space
NeoBundle 'nelstrom/vim-qargs'              " populate args with quickfix files
NeoBundle 'osyo-manga/vim-over'             " interactive substitution
NeoBundle 'AndrewRadev/linediff.vim'        " diff blocks of lines
" NeoBundle 'vim-scripts/diffchar.vim'        " show diffs character by character (messes with unimpaired maps)
NeoBundle 'rking/ag.vim'                    " search in local files :Ag
NeoBundle 'kien/ctrlp.vim'                  " fuzzy find files
NeoBundle 'tommcdo/vim-lion'                " align operator glip'
NeoBundle 'tommcdo/vim-exchange'            " operator to exchange text
NeoBundle 'tommcdo/vim-ninja-feet'          " operate to ends of text objects
NeoBundle 'bruno-/vim-vertical-move'        " move up and down in same column
NeoBundle 'epeli/slimux'                    " interact with tmux panes
NeoBundle 'airblade/vim-gitgutter'          " show git changes with signs
NeoBundle 'kshenoy/vim-signature'           " show and navigate marks
NeoBundle 'AndrewRadev/writable_search.vim' " search and replace across multiple files
NeoBundle 'idbrii/vim-mark'                 " highlight different words
NeoBundle 'wellle/vim-visual-star-search'   " search for visual selection (restore register)
NeoBundle 'haya14busa/incsearch.vim'        " highlight all incsearch matches
NeoBundle 'majutsushi/tagbar'               " tagbar shows definition
NeoBundle 'scrooloose/nerdtree'               " tagbar shows definition

" language support
NeoBundle 'b4winckler/vim-objc'           " objective c
NeoBundle 'vim-scripts/javacomplete'      " java
NeoBundle 'kana/vim-filetype-haskell'     " haskell
NeoBundle 'tpope/vim-markdown'            " markdown
NeoBundle 'fatih/vim-go'                  " go
NeoBundle 'exu/pgsql.vim'                 " postgres syntax highlighting
NeoBundle 'wellle/vim-simpledb'           " sql repl (switch mappings)

" color schemes
NeoBundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-scripts/Colour-Sampler-Pack'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'wellle/vim-colors-solarized'
NeoBundle 'mtglsk/mushroom'
NeoBundle 'wellsjo/wells-colorscheme.vim'
NeoBundle 'ajgrf/sprinkles'
NeoBundle 'vim-scripts/random.vim' " pseudo colorscheme to pick random one
NeoBundle 'wellle/targets.vim'       " advanced text objects
NeoBundle 'wellle/tmux-complete.vim' " complete words from panes
NeoBundle 'wellle/grapple.vim'       " yank without moving
set langmenu=en
if has("multi_byte")
  set encoding=utf-8
  set fileencoding=utf-8
  set bomb
  set termencoding=utf-8
  set fileencodings=utf-8,chinese,latin1
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif
syntax on
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
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :NERDTree<CR>

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
" copy to clip
vnoremap <leader>y "*y
nnoremap <leader>y V"*y
" select last pasted text
nnoremap <leader>v V`]
" movements between window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" search current selected text
vnoremap // y/<C-R>"<CR>
NeoBundle 'Valloric/YouCompleteMe'
let g:tmuxcomplete#trigger = 'omnifunc'

call neobundle#end()

NeoBundleCheck

colorscheme hybrid

" commands
command! -nargs=1 Gos call GoSearchFn(<f-args>)

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
  if 0 == argc()
    NERDTree
  endif
endfunction


autocmd VimEnter * call Startup()


