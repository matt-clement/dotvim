syntax on
filetype plugin indent on

"Make the status bar useful
set stl=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set showcmd
set laststatus=2

"Leaders
let mapleader = ","
let maplocalleader = "\\"

"Tabs
set smarttab
set tabstop=2
set softtabstop=2 
set shiftwidth=2
set shiftround
set expandtab

"Line Numbering
set numberwidth=4
set number
set wrap

nnoremap <silent><leader>n :set rnu! <cr>

set modeline
set modelines=5

"Commands
if has("user_commands")
	command! -bang -nargs=? -complete=file E e<bang> <args>
	command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif
"Remaps

"get off my lawn (remap arrow keys to useful things)
noremap <up> ddkP
noremap <down> ddp
noremap <right> <esc>0i<tab><esc>
noremap <left> <esc>0x

noremap <C-J> ciw<C-r>0<ESC>
noremap <leader>/ :let @/ = ""<cr>
inoremap <leader><c-u> <esc>bveUeli
inoremap {<cr> {<cr><cr>}<esc>ki<tab>
nnoremap <leader><c-u> viwUel
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
vnoremap <leader>" <esc>`<i"<esc>`><esc>a"<esc>
nnoremap <leader>w :w<cr>
noremap <leader>g :grep "\b<C-R><C-W>\b"<CR>:cw<CR><CR>
noremap <leader>j :cn<CR>
noremap <leader>k :cp<CR>
noremap <leader>c :ccl<CR>

"Abbreviations
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev Lenght Length
iabbrev lenght length

if executable('rg')
  set grepprg=rg\ --vimgrep
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
endif
