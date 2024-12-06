" PlugInstall to install vim-plug
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'  " sensible defaults
Plug 'tpope/vim-vinegar'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'

call plug#end()


" My own configs
set colorcolumn=80
set number relativenumber  " hybrid

" Tree
nnoremap <C-t> :NERDTreeToggle<CR>

" Fzf file search
nnoremap <silent> <C-f> :Files<CR>

" Initialize configuration dictionary for Fzf
let g:fzf_vim = {}

" Fzf preview window
" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_vim.preview_window = ['right,50%', 'ctrl-/']

" COC GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



