" Latest command
function TexCompile()
  :w
  !pdflatex %
endfunction
" Custom latex functions using vim-surround
" shift+s, b to make BOLD text
let g:surround_102 = "\\textbf{\r}"
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Other
:set colorcolumn=79
:set wrap
:set tw=80
:set number

call plug#begin('~/.vim/plugged')
" Need vim-plug for this https://github.com/junegunn/vim-plug
" Make sure you use single quotes

" Theme
Plug 'drewtempelmeyer/palenight.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'preservim/nerdtree'
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-surround'
" Plug 'lervag/vimtex'
" Snippets and so on require pip install pynvim
" Plug 'ycm-core/YouCompleteMe'
" Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them
" Maybe you need to symlink in order to make sure the dirs are talking
" ln -s ~/.vim/plugged/vim-snippets/UltiSnips ~/.config/nvim/UltiSnips
" Plug 'honza/vim-snippets'
Plug 'franbach/miramare'
Plug 'https://github.com/Mizux/vim-colorschemes'
Plug 'https://github.com/tjammer/focusedpanic.vim'
" Initialize plugin system
call plug#end()

" Colour schemes
" set background=dark
" colorscheme palenight
" let g:lightline = { 'colorscheme': 'palenight' }
" let g:airline_theme = "palenight"
" " Italics for my favorite color scheme
" let g:palenight_terminal_italics=1

" important!!
" set termguicolors

" the configuration options should be placed before `colorscheme miramare`
let g:miramare_enable_italic = 1
" let g:miramare_disable_italic_comment = 1
" let g:airline_theme = 'miramare'
colorscheme miramare
" Shortcuts
map <C-n> :NERDTreeToggle<CR>

"TRUE COLORS
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" enable syntax highlighting
syntax enable
" show line numbers
set number
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" Snippets
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsEnableSnipMate = 0
