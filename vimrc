
"Plugin
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'wolf-dog/nighted.vim'
Plug 'itchyny/lightline.vim'
Plug 'wolf-dog/lightline-nighted.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'davidhalter/jedi-vim'
" Initialize plugin system
call plug#end()
set laststatus=2
colorscheme nighted
let g:lightline = { 'colorscheme': 'nighted' }
let g:deoplete#enable_at_startup = 1
set number
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_quiet_messages = { "level": "warning" }
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
