set nu
set nocompatible
set guioptions-=T
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoread
set nobackup
set nowritebackup
set noswapfile
set shm=I
syntax enable
colorscheme molokai
" let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256		"set terminal using 256 color
highlight VertSplit cterm=none gui=none
filetype off

"set up all bundle using vundle:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<tab>'
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1
call vundle#end()
filetype plugin indent on

"set caps-lock to be esc key:
au VimEnter * silent !xmodmap -e  'clear Lock' -e 'keycode 0x42 = Escape' 
au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

"set jj key to be esc key in insert mode:
inoremap jj <Esc>

"set touchpad disabled:
"au VimEnter * silent !xinput set-prop 15 "Device Enabled" 0
"au VimLeave * silent !xinput set-prop 15 "Device Enabled" 1
