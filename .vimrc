call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'

"Цветовые схемы
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'henrynewcomer/vim-theme-papaya'
Plug 'jonathanfilip/vim-lucius'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()


set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
set mouse=a
syntax on
let g:mapleader=','

set t_Co=256
set cursorline
colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

