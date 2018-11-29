call plug#begin('~/.config/nvim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

imap jk <Esc>
set number
syntax on
colorscheme monokai
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=GREY ctermbg=NONE
let g:airline_theme='minimalist'
hi LineNr term=bold
set tabstop=4
