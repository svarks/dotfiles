call pathogen#infect()

syntax enable
filetype plugin indent on

set vb
set number
set showcmd
set wrap linebreak list
set columns=130

colorscheme wombat256mod

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

if has('gui_macvim')
  set guifont=Menlo:h16
  "let macvim_hig_shift_movement = 1
endif

if has('autocmd')
  " automatically applies vimrc changes
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <Leader>v :tabedit $MYVIMRC<CR>

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

set laststatus=2
set wildignore=.git


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

