"Vimrc

set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code

set tabstop=4 shiftwidth=4 expandtab " Set tabs to use 4 spaces (spaces > tab)

" Use relative numbering for easy hjkl
set relativenumber

" Vundle load
filetype off " use before pathogen

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'pearofducks/ansible-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'python-mode/python-mode'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-latex/vim-latex'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'vimwiki/vimwiki'

Plugin 'beautify-web/js-beautify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


filetype plugin indent on
syntax on " Syntax highlighting (very good)

" Handle markdown
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc 
set hls ic
set nofoldenable " Disable annoying folding in python-mode

" Currently python-mode doesn't handle f-strings
let g:pymode_python = 'python3' 
let g:pymode_lint_checkers = ['pep8','pyflakes']
" let g:pymode_options_max_line_length = 100

" Move through tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Handling random search cases
set hlsearch " Highlight matches
set incsearch " Incremental searching
set ignorecase " Ignore case while searching

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

" NerdTreeToggle keybinding
map <Leader>n :NERDTreeToggle<CR> 

"Don't fold up latex
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

let g:clang_library_path='/usr/lib64/libclang.so.6.0'

" Command alias
command W w !sudo tee "%" > /dev/null

"To create a new tab
nnoremap tn  :tabnew<Space>

"For vim airline
set laststatus=2
let g:airline_powerline_fonts = 1

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
