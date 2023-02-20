set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/LeaderF'
Plugin 'w0rp/ale'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-one'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'maxbrunsfeld/vim-yankstack'
call vundle#end()
syntax on
colorscheme molokai
set background=dark

set backspace=indent,eol,start
set noshowmode
filetype plugin indent on
set showtabline=0
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=2
set ruler
set noswapfile
set hlsearch
set showmatch
set matchtime=2
set cursorcolumn
set cursorline
 set autoread
set autowriteall

hi SpecialKey guifg=darkgrey ctermfg=darkgrey

highlight CursorLine cterm=NONE ctermbg=black ctermfg=blue guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=red guibg=NONE guifg=NONE
highlight MatchParen ctermbg=Blue guibg=lightblue
highlight Normal ctermfg=252 ctermbg=none

if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif

let g:tagbar_width=30
let g:tagbar_left=1
noremap <F5> :TagbarToggle<CR>

let g:airline_theme="jellybeans"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#bookmark#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒 ='
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1
let Powerline_symbols='fancy'
let g:bufferline_echo=0

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fix_on_save = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_linters = {
    \ 'cpp': ['cppcheck','gcc'],
    \ 'c': ['cppcheck', 'gcc', 'clang-format'],
    \ 'bash': ['shellcheck'],
   \}
let g:ale_c_gcc_options = '-Wall -O1 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O1 -std=c++11'
let g:ale_lint_on_enter = 0
set fenc= 
noremap <F9> :ALEToggle<CR>
let g:mapleader = ";"
noremap <leader>w :ALEDetail<CR>
 
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_HideHelp = 1

let g:Lf_Gtagslabel = 'pygments'
noremap <F3> :Leaderf bufTag<CR>
noremap <F4> :Leaderf file<CR>

noremap <C-N> :bn <CR>
noremap <C-P> :bp <CR>
noremap <C-C> :bdelete <CR>
noremap <F2> :cclose <CR>

let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=3
let g:godef_same_file_in_same_window=1

let g:autoformat_verbosemode=0
"""autocmd BufWrite *.sql,*.c,*.cpp,*.cc,*.java,*.js,*.py :Autoformat
let g:formatdef_clangformat_google = '"clang-format -style google -"'
let g:formatters_c = ['clangformat_google']
command  Autoformat :Autoformat

"""function! Showline()
"""    if g:line == 0 
"""         let g:line = 1
"""         set nonumber 
"""    else 
"""         let g:line = 0
"""         set number 
"""    endif
"""endfunction 
"""noremap <C-l> :call Showline() <cr>

"""noremap <leader>s :w<CR>
"""noremap <leader>c :wq<CR>
"""noremap <leader>q :q!<CR>

"""nnoremap <leader>d :Leaderf gtags -d<space> 
"""nnoremap <leader>r :Leaderf gtags -r<space> 
"""nnoremap <leader>f :Leaderf rg<space> 
"""map <leader><Tab>  :reg <CR>

function ShowIndent() 
    set list
    set listchars=tab:>~,trail:.
endfunction

inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-B> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <Right>

command ShowIndent : call ShowIndent
command HideIndent : set nolist

command ShowLine : set number 
command HideLine : set nonumber

command  -nargs=1 D : Leaderf gtags -d "<arg>"
command  -nargs=1 R : Leaderf gtags -r "<arg>"
command  -nargs=1 F : Leaderf rg "<arg>"

