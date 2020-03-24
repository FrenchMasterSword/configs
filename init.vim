" Vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

Plug 'lervag/vimtex'

Plug 'mhinz/vim-startify'

" Plugins become visible to Vim after this call.
call plug#end()

" Deoplete
let g:deoplete#enable_at_startup = 1

" Airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" NERDtree
let NERDTreeMouseMode = 2

" Vimtex
let g:vimtex_compiler_progname = 'nvr'

" Custom

" jk to go back to normal mode
inoremap jk <esc>

" Use clipboard for everything
set clipboard+=unnamedplus
" All mouse operations enabled
set mouse=a
" buffers survive without being seen, just like Bear Grylls
set hidden

" Flag trailing whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.vim, match BadWhitespace /\s\+$/

" Reload init script after saving
augroup myinithooks
    au!
    autocmd bufwritepost $MYVIMRC source $MYVIMRC
augroup END

" Line numbering
set number relativenumber

" When in hybrid
highlight LineNr       ctermfg=Darkgrey
highlight CursorLineNr ctermfg=yellow

augroup numbertoggle
  autocmd!
  autocmd BufEnter,InsertLeave * set relativenumber
  autocmd BufLeave,InsertEnter * set norelativenumber
augroup END

" Hardcore training

"map backspace to back
:nnoremap <BS> <C-O>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bye escape
inoremap <esc> <nop>

" Bye directional keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
nnoremap  <Up>     <NOP>
nnoremap  <Down>   <NOP>
nnoremap  <Left>   <NOP>
nnoremap  <Right>  <NOP>
