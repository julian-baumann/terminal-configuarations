syntax on
colorscheme focuspoint

set background=dark
set t_Co=256

set expandtab
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set incsearch
nnoremap <silent> <Space> :set hlsearch! hlsearch?<Bar>:echo<CR>

" Converting 2 to 4 spaces with :Ret
command! -nargs=0 -range Ret <line1>,<line2>s/\v%(^ *)@<= {2}/\t/g

call plug#begin("~/.vim/plugged")
	Plug 'leafgarland/typescript-vim'
	Plug 'ap/vim-css-color'
    Plug 'akz92/vim-ionic2'
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    Plug 'stevearc/vim-arduino'
call plug#end()


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

" For tmux
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

