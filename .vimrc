filetype on
set showcmd
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme github
:imap ii <Esc>
set transparency=5
set number

let mapleader = ","

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

"opens nerdtree automatically on startup
autocmd VimEnter * NERDTree ~/sites/
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1

"turns off toolbar
if has("gui_running")
set guioptions-=T
endif

"syntax highlight for scss files
au BufRead,BufNewFile *.scss set filetype=scss

"alias tagbar opening
nmap <F8> :TagbarToggle<CR>

"git gutter settings
highlight clear signcolumn
let g:gitgutter_enabled = 0
nmap <leader>gu :GitGutterToggle<CR>

