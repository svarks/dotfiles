call pathogen#infect()

syntax on
filetype plugin indent on

set nocompatible
set vb
set number
set showcmd
set nowrap
set list
set wildignore=.git,tmp,public/uploads
" set encoding=utf-8

colorscheme wombat256

"search
set hlsearch
set incsearch
set ignorecase
set smartcase

"indentation
set ts=2 sts=2 sw=2
set expandtab
set autoindent

" invisibles
set listchars=tab:▸\ ,eol:¬
set showbreak=…
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" statusline
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

if has('gui_macvim')
  set guifont=Menlo:h14
  set columns=160
  set linespace=2
  "let macvim_hig_shift_movement = 1
endif

if has('autocmd')
  " automatically applies vimrc changes
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" key mapping

nmap <Leader>v :tabedit $MYVIMRC<CR>

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

nnoremap <F5> :GundoToggle<CR>

" if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
" endif

" For mac users (using the 'apple' key)
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" textmate like commenting
map <D-/> <Plug>CommentaryLine

" autocmd vimenter * NERDTree
" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror
" autocmd VimEnter * wincmd w

