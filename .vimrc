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
Plugin 'burnettk/vim-angular'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
"Plugin 'takac/vim-hardtime'

" webapi-vim is need for gist-vim
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
"----------------------------

Plugin 'othree/javascript-libraries-syntax'
Plugin 'tpope/vim-unimpaired'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'
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
"Plugin 'Anzumana/vim-numbertoggle'
Plugin 'jeffkreeftmeijer/vim-numbertoggle.git'
Plugin 'othree/html5.vim'
"if i should run terminal commands every often then this could make sense
"Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kshenoy/vim-signature'

Plugin 'rizzatti/dash.vim'
Plugin 'clausreinke/typescript-tools.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'majutsushi/tagbar'
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
"filetype plugin indent on    " required
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
set timeoutlen=150
filetype plugin on
filetype plugin indent on
set smartindent
set background=dark
"set background=light
colorscheme solarized
"set guifont=Monaco:h14
set guifont=Hack\ Regular:h14
set cole=2
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
"set scrolloff=9999999
set showcmd
"nnoremap <leader>td :TernDoc<cr>
"nnoremap <leader>tb :TernDocBrowse<cr>
"nnoremap <leader>tt :TernType<cr>
"nnoremap <leader>td :TernDef<cr>
"nnoremap <leader>tpd :TernDefPreview<cr>
"nnoremap <leader>tsd :TernDefSplit<cr>
"nnoremap <leader>ttd :TernDefTab<cr>
"nnoremap <leader>tr :TernRefs<cr>
"nnoremap <leader>tR :TernRename<cr>
"nnoremap <leader>tf :TernDef<cr>

"Rezising vim splits 
set winminheight=0 "shows single line for other splits if one is maximized
map<leader>z <C-w>_
map<leader>x <C-w>=
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

nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

nnoremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>kr :VtrKillRunner<cr>
nnoremap <leader>lr :VtrSendLinesToRunner<cr>
nnoremap <leader>cdr :VtrSendCtrlD<cr>
nnoremap <leader>ar :VtrAttachToPane<cr>
nnoremap <leader>rr :VtrSendCommandToRunner<cr>
nnoremap <leader>tt :VtrSendCommandToRunner karma start<cr>
nnoremap <leader>cr :VtrSendCommandToRunner!   
nnoremap <leader>nc :NextColorScheme<cr>  
nnoremap <leader>pc :PrevColorScheme<cr>   
nnoremap <leader>cs :colorscheme solarized<cr>   

"highlight the current cursor positon
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
"-----------
nnoremap <leader>- :vertical resize -10<cr>   
nnoremap <leader>= :vertical resize +10<cr>   
nnoremap <leader>a :tabfirst <cr>   
set hlsearch
nnoremap <leader>h :nohlsearch<cr>   
nnoremap <leader>r :echo $MYVIMRC<cr>   
nnoremap <leader>s :Ack 
nnoremap <leader>f :A<cr>
nnoremap <leader>ncs :NextColorScheme<cr>
nnoremap <leader>pcs :PrevColorScheme<cr>
nnoremap <leader>so :colorscheme solarized<cr>
nnoremap <leader>t :tabnew <cr>
nnoremap <leader>l :set nonumber <cr> :set norelativenumber <cr>
nnoremap <leader>o :TagbarToggle <cr> 
let g:used_javascript_libs ='angularjs,angularui,angularuirouter'

"place cursor on end of word to enclose in string quotes
let @q ='A"bi"2w'
"place console log around line
let @l = 'Iconsole.log(A);'
let g:angular_filename_convention = 'camelcased'
set foldmethod=indent
set foldlevelstart=20
let g:angular_source_directory = 'www/js/controllers/'
let g:angular_test_directory = 'test/unit/'
"highlight word regardless of context
"https://stackoverflow.com/questions/11709965
augroup HiglightTODO
	autocmd!
	autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO_ANZU', -1)
	autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
	autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'FIXME_ANZU', -1)
	autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'IMPROVE_ANZU', -1)
augroup END

"let g:tagbar_type_typescript = {
"\ 'ctagstype': 'typescript',
"\ 'kinds': [
	"\ 'c:classes',
	"\ 'n:modules',
	"\ 'f:functions',
	"\ 'v:variables',
	"\ 'v:varlambdas',
	"\ 'm:members',
	"\ 'i:interfaces',
	"\ 'e:enums',
"\ ]
"\ }

let g:tagbar_type_css = {
		\ 'ctagstype' : 'css',
	\ 'kinds'     : [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities'
    \ ]
		\ }
"let g:hardtime_default_on = 0
:nmap <silent> <leader>d <Plug>DashSearch
:nmap <silent> <leader>gd <Plug>DashGlobalSearch
let g:dash_map = {                                                                                                                                                    
		\ 'javascript' : ['javascript', 'angularjs','html'],
		\ 'typescript' : ['javascript', 'angularts','html']                                                                                            
		\ }
