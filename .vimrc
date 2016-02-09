" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'bling/vim-airline'
NeoBundle 'saltstack/salt-vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" END NeoBundle

for f in split(globpath(split(&runtimepath, ',')[0], '*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor


autocmd BufRead *.py set smartindent expandtab cinwords=if,elif,else,for,while,try,except,finally,def,class
