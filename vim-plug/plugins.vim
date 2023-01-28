" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto Pairs For '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Class and Function Tag Bar
    Plug 'preservim/tagbar'
    " Relative Line Numbers
    Plug 'ericbn/vim-relativize'
    " Fuzzy Finder
    Plug 'junegunn/fzf'
    " Surround
    Plug 'tpope/vim-surround'
    " Commenting tool
    Plug 'tpope/vim-commentary'
    " Replace With VIM Register
    Plug 'vim-scripts/ReplaceWithRegister'
    " Dot operator works for Plugins
    Plug 'tpope/vim-repeat'
    " Indent Text Object
    Plug 'michaeljsmith/vim-indent-object'
    " Required for other kana text objs
    Plug 'https://github.com/kana/vim-textobj-user'
    " Line text object
    Plug 'https://github.com/kana/vim-textobj-line'
    " Same Clip Board as System
    Plug 'https://github.com/christoomey/vim-system-copy'
    " Entire Text Object
    Plug 'https://github.com/kana/vim-textobj-entire'
    " Emmet
    Plug 'https://github.com/mattn/emmet-vim'
    " Text searcher
    Plug 'https://github.com/rking/ag.vim'
    " Code completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status bar
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
    Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
	Plug 'https://github.com/airblade/vim-gitgutter'
<<<<<<< HEAD
=======
	Plug 'https://github.com/vimwiki/vimwiki'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'nvim-treesitter/nvim-treesitter-context'
>>>>>>> Initial commit

call plug#end()
