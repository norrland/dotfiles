for f in split(globpath(split(&runtimepath, ',')[0], '*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor

" Plug
" Required:
call plug#begin(expand('~/.vim/plug/'))

" My Bundles here:

Plug 'bling/vim-airline'
Plug 'vim-scripts/pep8'
Plug 'saltstack/salt-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Go
Plug 'fatih/vim-go'
" Autocomplete
Plug 'Shougo/deoplete.nvim'
Plug 'elzr/vim-json'
" Colors
Plug 'morhetz/gruvbox'
Plug 'geetarista/ego.vim'
Plug 'wellsjo/wellsokai.vim'
" Ranger
Plug 'airodactyl/neovim-ranger'
" Neomake
Plug 'benekastah/neomake'

call plug#end()

" Required:
filetype plugin indent on


autocmd BufRead *.py set smartindent expandtab cinwords=if,elif,else,for,while,try,except,finally,def,class

" Neocomplete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use deoplete.
"let g:deoplete#enable_at_startup = 1
"" Use smartcase.
"let g:deoplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:deoplete#sources#syntax#min_keyword_length = 3
"let g:deoplete#lock_buffer_name_pattern = '\*ku\*'
"
"" Define dictionary.
"let g:deoplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:deoplete#keyword_patterns')
"    let g:deoplete#keyword_patterns = {}
"endif
"let g:deoplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     deoplete#undo_completion()
"inoremap <expr><C-l>     deoplete#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" Set colorscheme
"colorscheme gruvbox
"colorscheme ego
colorscheme wellsokai
"let g:gruvbox_contrast_dark = 'hard'
