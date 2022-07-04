" https://gist.github.com/pthrasher/3933522
" https://media.csesoc.org.au/vim-aesthetics/
" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

set nocompatible " Fuck VI... That's for grandpas.
set showcmd " Show currently typing command
filetype off " Disable filetype before loading plugins
"autocmd BufWritePost .vimrc source % " When a file named .vimrc has been written, source it


""" Setup Vim-Plug:
" For this to work, you must install the vim-plug plugin manually.
" https://github.com/junegunn/vim-plug
" To install vim-plug,
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" provides support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim'

call plug#end()


""" We have to turn this stuff back on if we want all of our features.
syntax on " Syntax highlighting
set formatoptions-=cro "Disable automatic comments when pasting


""" Indentation options
set autoindent " New lines inherit the indentation of previous lines.
set shiftwidth=4 " When shifting, indent using four spaces.
set expandtab " Convert tabs to spaces.
set tabstop=4 " Indent using four spaces.
set smartindent " Intellegently dedent / indent new lines based on rules.
set shiftround " tab / shifting moves to closest tabstop. When shifting lines, round the indentation to the nearest multiple of “shiftwidth.
set smarttab " Let's tab key insert 'tab stops', and bksp deletes tabs. Insert “tabstop” number of spaces when the “tab” key is pressed.
set softtabstop=4
filetype indent on " Filetype auto-detection: Enable indentation rules that are file-type specific.
filetype plugin on " Enable loading the plugin files for specific file


""" User Interface Options
set background=dark " Use colors that suit a dark background.
set ruler " Always show cursor position.
colorscheme delek " Change color scheme.
set cursorline " Highlight the line currently under cursor.
" Configure cursorline:
hi cursorline cterm=none ctermbg=234 guibg=#303000
set number " Show line numbers on the sidebar.


""" Miscellaneous options
set autoread " Automatically re-read files if unmodified inside Vim.
set hidden " Hide files in the background instead of closing them.


""" Search Options
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.
" Clear match highlighting:
noremap <leader><space> :noh<cr>:call clearmatches()<cr>
" Very Magic - Use sane regex's when searching:
nnoremap / /\v
vnoremap / /\v


""" Text Rendering Options
set wrap " Enable line wrapping
set scrolloff=10 " The number of screen lines to keep above and below the cursor.
set linebreak " Avoid wrapping a line in the middle of a word.
