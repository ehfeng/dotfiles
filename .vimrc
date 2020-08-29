let mapleader=","
set statusline+=col:%l,%c 
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync
" Disables quick-fix to auto open when files have errors
let g:prettier#quickfix_enabled=0
set autowrite

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" Search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

