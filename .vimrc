syntax on
colorscheme focuspoint

set background=dark
set t_Co=256

set laststatus=2
set noshowmode
set encoding=utf8
let g:airline_powerline_fonts = 1

set expandtab
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set incsearch
nnoremap <silent> <Space> :set hlsearch! hlsearch?<Bar>:echo<CR>
"inoremap " ""<left>
"inoremap "<CR> "
"inoremap " ""<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
inoremap div<CR> <div></div><left><left><left><left><left><left>
inoremap img<CR> <img src="" alt="" /><left><left><left><left><left><left><left><left><left><left><left>
inoremap body<CR> <body><CR></body><ESC>O<TAB>
inoremap input<CR> <input type="" id="" name=""><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap doid<CR> document.getElementById("")<left><left>
inoremap docl<CR> document.getElementsByClassName("")<left><left>
inoremap basic<CR> <!DOCTYPE html><CR><html> <CR><BS><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title>Page Title</title><CR><script src=""></script><CR></head><CR><CR><body><CR></body><CR></html><UP><UP>

command! -nargs=0 -range Ret <line1>,<line2>s/\v%(^ *)@<= {2}/\t/g

call plug#begin("~/.vim/plugged")
	Plug 'leafgarland/typescript-vim'
	Plug 'ap/vim-css-color'
    Plug 'akz92/vim-ionic2'
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    Plug 'itchyny/lightline.vim'
call plug#end()

let g:lightline = {
       \ 'active': {
       \   'left': [ [ 'mode', 'paste' ],
       \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
       \ },
       \ 'component': {
       \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
       \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
       \   'fugitive': '%{exists("*fugitive#head")?" ".fugitive#head():""}'
       \ },
       \ 'component_visible_condition': {
       \   'readonly': '(&filetype!="help"&& &readonly)',
       \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
       \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
       \ },
       \ 'separator': { 'left': '', 'right': '' },
       \ 'subseparator': { 'left': '', 'right': '' }
       \ } 

" Intelligent tab completion
inoremap <silent> <Tab> <C-r>=<SID>InsertTabWrapper(1)<CR>
inoremap <silent> <S-Tab> <C-r>=<SID>InsertTabWrapper(-1)<CR>

function! <SID>InsertTabWrapper(direction)
    let idx = col(".") - 1
    let str = getline(".")

    if a:direction > 0 && idx >= 2 && str[idx - 1] == " "
                \&& str[idx - 2] =~? "[a-z]"
        if &softtabstop && idx % &softtabstop == 0
            return "\<BS>\<Tab>\<Tab>"
        else
            return "\<BS>\<Tab>"
        endif
    elseif idx == 0 || str[idx - 1] !~? "[a-z]"
        return "\<Tab>"
    elseif a:direction > 0
        return "\<C-p>"
    else
        return "\<C-n>"
    endif
endfunction

if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

