" Russell Kirmayer custom vimrc file

" Show line numbers
set number

" Proper spacing and formatting
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Ignore compiled files
set wildignore=*.0,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" Highlight search results, update
set hlsearch
set incsearch

" Show matching brackets
set showmatch

" Enable syntax highlighting
syntax enable
set syntax=whitespace

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off
set nobackup
set nowb
set noswapfile

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set cursorcolumn
set cursorline
autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=None ctermbg=None

set listchars=tab:>-,trail:-
set list
