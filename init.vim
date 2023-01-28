source $HOME/.config/nvim/vim-plug/plugins.vim

set encoding=UTF-8

" Allow point and click
set mouse=a
set number relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

" Auto open plugins on vim launch
autocmd vimenter * Tagbar
" Open NERDTree with the passed path if not a file
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Ag '
nnoremap <C-p> :FZF<CR>

" Emmet shortcuts
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Auto close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mapping for NERDTree
nmap <Space> o

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:devicons_enable_folder_syntax_highlighting = 1
let g:devicons_folders_as_icons = 1

" Color git buffer
highlight VimgutterBuffer ctermbg=red
