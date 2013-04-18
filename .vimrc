filetype on
filetype plugin on
filetype indent on

" So code kit will work
set nobackup
set nowritebackup
set noswapfile

" reloads .vimrc when it's changed
au! BufWritePost .vimrc source %

set showcmd
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme github
:imap ii <Esc>
set number

let mapleader = ","

"" Searching
set hlsearch      " highlight matches
set incsearch     " incremental searching
set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                           
nmap <silent> <c-j> :wincmd j<CR>                                                                                                            
nmap <silent> <c-h> :wincmd h<CR>                                                                                                         
nmap <silent> <c-l> :wincmd l<CR>

map <Leader>n :NERDTreeTabsToggle<cr>

" NERDtree settings
let NERDTreeShowHidden=1 
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_autoclose = 1
let NERDTreeIgnore=['\~$', '\.svn$', '\.git$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1

"au GUIenter * NERDTreeTabsOpen 
"au vimenter * NERDTree

"turns off toolbar
if has("gui_running")
set guioptions-=T
endif

"syntax highlight 
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.hbs set filetype=handlebars
au BufRead,BufNewFile *.jade set filetype=jade

"alias tagbar opening
nmap <Leader>t :TagbarToggle<CR>

"git gutter settings
highlight clear signcolumn
let g:gitgutter_enabled = 0
nmap <leader>gu :GitGutterToggle<CR>

"setting tab spacing
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set smarttab

:let b:match_ignorecase = 1
set scrolloff=3 " Keep 3 lines below and above the cursor

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

