""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                         VUNDLE SETTINGS                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" commands required for vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/vim-easy-align'
Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                          KEY BINDINGS                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set leader key
let mapleader = "\<Space>"

" key bindings
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e

"key bindings for copying and pasting from clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p

nnoremap <Leader><Up> <C-W>+


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                            FUNCTIONS                                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remove trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
  endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" resizing splits
"nnoremap <S-k> :normal <c-r>=Resize('+')<CR><CR>
"nnoremap <S-j> :normal <c-r>=Resize('-')<CR><CR>
"nnoremap <S-h> :normal <c-r>=Resize('<')<CR><CR>
"nnoremap <S-l> :normal <c-r>=Resize('>')<CR><CR>
"
"function! Resize(dir)
"  let this = winnr()
"  if '+' == a:dir || '-' == a:dir
"    execute "normal <c-w>k"
"    let up = winnr()
"    if up != this
"      execute "normal <c-w>j"
"      let x = 'bottom'
"    else
"      let x = 'top'
"    endif
"  elseif '>' == a:dir || '<' == a:dir
"    execute "normal <c-w>h"
"    let left = winnr()
"    if left != this
"      execute "normal <c-w>l"
"      let x = 'right'
"    else
"      let x = 'left'
"    endif
"  endif
"  if (a:dir == '+' && x == 'bottom') || (a:dir == '-' && x == 'top')
"    return "5\<c-v>\<c-w>+"
"  elseif (a:dir == '-' && x  == 'bottom') || (a:dir == '+' && x == 'top')
"    return "5\<c-v>\<c-w>-"
"  elseif (a:dir == '<' && x == 'left') || (a:dir == '>' && x == 'right')
"    return "5\<c-v>\<c-w><"
"  elseif (a:dir == '>' && x == 'left') || (a:dir == '<' && x == 'right')
"    return "5\<c-v>\<c-w>>"
"  else
"    echo "oops. what are you doing lol"
"    return ""
"  endif
"endfunction

" allow backspacing everything in insert mode
set backspace=indent,eol,start

" status line
set laststatus=2

" tab configs
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent

" line / column numbers
set number
set ruler
set cursorline

" no wrapping
set tw=0

" syntax highlighting
syntax enable
colorscheme lucid
set term=screen-256color

"" merlin setup
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                         PLUGIN SETTINGS                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" airline setup
let g:airline_theme = 'zenburn'
let g:airline#extensions#tabline#enabled = 1

" easymotion setup
let g:Easymotion_smartcase = 1
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map ? <Plug>(easymotion-sn)
omap ? <Plug>(easymotion-tn)

"" easy-align setup
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {'/': { 'pattern': '//' }}
let g:easy_align_ignore_groups = ['String']

"" fzf setup
command! Fzd call fzf#run({'dir':'~/Desktop', 'sink':'e'})


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   VARIOUS FILE TYPE SETTINGS                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" cupfile settings
autocmd BufRead,BufNewFile *.cup set filetype=cup
autocmd FileType cup setlocal shiftwidth=4 softtabstop=4 expandtab

" java settings
autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab

" python settings
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

" vagrantfile settings
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" xi settings
autocmd BufRead,BufNewFile *.xi set filetype=xi
