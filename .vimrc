let mapleader=" "
syntax on
filetype plugin indent on
set backspace=2
set number
" set norelativenumber
set relativenumber
" set cursorline
set nowrap
set wildmenu
set hlsearch
set incsearch
set smartcase
set autoindent
"set cinoptions+=g0
set shiftwidth=4
set ts=4
set noexpandtab
set autoindent
set completeopt-=preview
set sidescroll=10
set ignorecase
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set showtabline=2
set tabpagemax=15
"inoremap ( ()<LEFT>
"inoremap { {}<LEFT>
"imap{ {}<ESC>i<CR><ESC>O
"inoremap [ []<LEFT>
noremap = nzz
noremap - Nzz
noremap K 5k
noremap J 5j
noremap H 7h
noremap L 7l

noremap <LEADER><CR> :nohlsearch<CR>
map s <nop>
map S :w<CR>
map Q :q<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map ts :tab split<CR>
" 复制当前选中到系统剪切板
set clipboard=unnamedplus
vmap <leader>y "+y

map R :source $MYVIMRC<CR>
call plug#begin('~/.vim/plugged')
"Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-buffer-ops'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'luochen1990/rainbow'
Plug 'pboettch/vim-cmake-syntax'
Plug 'vim-python/python-syntax'
call plug#end()

set background=dark
let g:onedark_termcolors=256
colorscheme onedark

let g:airline#extensions#tabline#buffer_nr_show=1

"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader>m :NERDTreeFind<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
" let g:NERDTreeTabNewDirMode = 'r'
" nerdcommenter
let g:NERDSpaceDelims = 1

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

nnoremap gp :tabp<CR>
nnoremap gn :tabn<CR>
nnoremap gq :tabc<CR>


" let NERDTreeShowBookmarks=1
"nnoremap <leader>jc :YcmCompleter GoToDefinitionElseDeclaration<CR>|
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>|
nnoremap <leader>f :YcmCompleter GoToDeclaration<CR>|
let g:ycm_enable_semantic_highlighting=1
let g:ycm_server_python_interpreter = '/usr/bin/python3.8'
"let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '✹'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_semantic_triggers =  {
                \   'c' : ['->', '.','re![_a-zA-z0-9]'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
                        \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }
" let g:ycm_goto_buffer_command = 'new-or-existing-tab' 
" let g:ycm_goto_buffer_command = 'horizontal-split'
nmap <leader>yw <Plug>(YCMFindSymbolInWorkspace)
let g:ycm_auto_hover=''
nmap <leader>yh <Plug>(YCMHover)
" let g:ycm_always_populate_location_list = 1
" highlight YcmFloatingPreview guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue

" auto pairs
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_clangd_args=['--header-insertion=never']
let g:AutoPairsMultilineClose = 0
let g:AutoPairsMapBS = 0

" 回到上次编辑
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
" 取消txt自动缩进
au BufRead,BufNewFile *.txt setlocal noautoindent

"rainbow
let g:rainbow_active = 1
let g:rainbow_colors = ['deep pink', 'chartreuse', 'gold', 'Sienna1', 'turquoise', 'RoyalBlue1', 'darkorange', 'MediumPurple1']

" python syntax
let g:python_highlight_all = 1
