call pathogen#infect()
call pathogen#helptags()

filetype on
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set number
set hlsearch
set ruler
set colorcolumn=100
autocmd FileType gitcommit set tw=50
autocmd FileType python set tabstop=4 shiftwidth=4
autocmd FileType html set tabstop=4 shiftwidth=4
autocmd FileType make setlocal noexpandtab
autocmd FileType markdown set tw=100
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
nnoremap <Leader>wn :match ExtraWhitespace /\s\+$/<CR>
nnoremap <Leader>wf :match<CR>
nnoremap <Leader>wd :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
map <c-f> :call JsBeautify()<cr>
set exrc
set secure
