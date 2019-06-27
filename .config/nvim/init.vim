call plug#begin('~/.config/nvim/plugged')

Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion' 
call plug#end()

set t_Co=256 " enable 256 colors in vim
syntax on
colorscheme minimalist
	
imap jk <Esc>
set tabstop=4 " tabwidth
set shiftwidth=4 " indent size
set nu " show line numbers
set numberwidth=5 " left margin

" set background to terminal bg color
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

" vertical separator
set fillchars-=vert:\| | set fillchars+=vert:\ 
" NERDTree
" autocmd vimenter * NERDTree
" autocmd VimEnter * wincmd p
map <C-\> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" hide tildes
" highlight NonText ctermfg=bg guifg=bg

" nerdcommenter
let g:NERDSpaceDelims = 1

" airline
let g:airline_theme='deus'
" let g:airline_powerline_fonts = 1

" easymotion
map <Leader> <Plug>(easymotion-prefix)

" supress notification threshold warning
let g:NERDTreeNotificationThreshold=500

" disable changing cursor
set guicursor=

set directory=.
