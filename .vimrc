"old line to use pathogen instead of vundle
"execute pathogen#infect()
"Start of file taken from https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'majutsushi/tagbar'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"Plugin to make use python instead if vimscript
"Plugin 'amoffat/snake'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'ap/vim-css-color'
"Plugin 'mbadran/headlights'
"Plugin 'Shutnik/jshint2.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'matchit.zip'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'Anzumana/vim-numbertoggle'
Plugin 'othree/html5.vim'
"if i should run terminal commands every often then this could make sense
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-runner'

"Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" End of vimrc taken from Vundle Readme
syntax on 
set relativenumber
set number
"filetype plugin indent on
"filetype plugin on
set background=dark
colorscheme solarized
"set guifont=Monaco:h14
set guifont=Hack\ Regular:h14
set cole=1
"let g:javascript_conceal_function   = "ƒ"
"let g:javascript_conceal_null       = "ø"
"let g:javascript_conceal_this       = "@"
"let g:javascript_conceal_return     = "⇚"
"let g:javascript_conceal_undefined  = "¿"
"let g:javascript_conceal_NaN        = "ℕ"
"let g:javascript_conceal_prototype  = "¶"
"let g:javascript_conceal_static     = "•"
"let g:javascript_conceal_super      = "Ω"
set shiftwidth=2
set tabstop=2
let g:indent_guides_enable_on_vim_startup = 1
"let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"let jshint2_save = 1
let g:headlights_smart_menus = 1 
let g:headlights_use_plugin_menu = 1

"
let g:headlights_show_commands = 1
"
let g:headlights_show_mappings = 1
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd BufEnter * set completeopt-=preview
let mapleader = " "
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1
"runtime macros/matchit.vim
set scrolloff=5
set showcmd
nnoremap <leader>td :TernDoc<cr>
nnoremap <leader>tb :TernDocBrowse<cr>
nnoremap <leader>tt :TernType<cr>
nnoremap <leader>td :TernDef<cr>
nnoremap <leader>tpd :TernDefPreview<cr>
nnoremap <leader>tsd :TernDefSplit<cr>
nnoremap <leader>ttd :TernDefTab<cr>
nnoremap <leader>tr :TernRefs<cr>
nnoremap <leader>tR :TernRename<cr>
nnoremap <leader>tf :TernDef<cr>

"http://stackoverflow.com/questions/821902/disabling-swap-files-creation-in-vim 
"
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set pastetoggle=<F5>
map <leader>n :NERDTreeToggle<CR>
map <leader>es :UltiSnipsEdit<CR>

let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_error_symbol = 'E'
"You can configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"
let g:gist_open_browser_after_post = 1
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader>e"
let g:UltiSnipsJumpForwardTrigger="<leader>f"
let g:UltiSnipsJumpBackwardTrigger="<leader>b"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>hs :sp<CR>
nnoremap <leader>ks :exit<CR>
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
			\}

nnoremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>kr :VtrKillRunner<cr>
nnoremap <leader>lr :VtrSendLinesToRunner<cr>
nnoremap <leader>cdr :VtrSendCtrlD<cr>
nnoremap <leader>ar :VtrAttachToPane<cr>
nnoremap <leader>rr :VtrSendCommandToRunner<cr>
nnoremap <leader>cr :VtrSendCommandToRunner!   
