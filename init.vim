call plug#begin()

Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-telescope/telescope.nvim'
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree' 
Plug 'junegunn/goyo.vim'
Plug 'will133/vim-dirdiff'
call plug#end()


" Find files using Telescope command-line sugar.
nnoremap <leader>;ff <cmd>Telescope find_files<cr>
nnoremap <silent>;fg <cmd>Telescope live_grep<cr>
nnoremap <leader>;fb <cmd>Telescope buffers<cr>
nnoremap <leader>;fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <silent>;ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>;fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>;fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>;fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" Use release branch (recommend)
call plug#end()
" change mapping for alternate file  
" https://vi.stackexchange.com/questions/6340/changing-between-the-active-buffer-and-the-alternate-buffer/6342#6342?newreg=9d3021c35a8a4d20b5d1eb5a214222e4
"nnoremap <BS> <C-^>
"https://stackoverflow.com/questions/11659618/altbackspace-to-delete-words-in-vim
imap <Esc><BS> <C-w>

set relativenumber
set clipboard=unnamed
let mapleader= " " 

" mapi
" '
nnoremap <silent>;df <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <silent>;sf <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <silent>;r <cmd>lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <silent>;e <cmd>lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <silent>;c <cmd>lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <silent>;v <cmd>lua require("harpoon.ui").nav_file(4)<cr>
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  "" Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> I :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('I', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <silent>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"augroup mygroup
""autocmd!
"""" Setup formatexpr specified filetype(s).
""autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"""" Update signature help on jump placeholder.
""autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<leader>f'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<leader>b'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

nnoremap <leader>vs :vsp<CR>
nnoremap <leader>hs :sp<CR>
nnoremap <leader>ks :exit<CR>

" navigate up from fugitive
"nnoremap .. :edit %:h<cr>
nnoremap <leader>w :Gdiffsplit<cr>
nnoremap <leader>k :Git<cr>
set diffopt+=vertical

set foldmethod=indent
set foldlevelstart=20
colorscheme solarized

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap <leader>p <cmd>Prettier<cr>

"switch back to current file and closes fugitive buffer
nnoremap <Leader>x <c-w>h<c-w>c

map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>h :nohlsearch<cr>   
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" Map Ctrl-Backspace to delete the previous word in insert mode.
inoremap <BS> <C-W>
noremap <BS> <C-^>
nnoremap <S-j> 15j<cr>zz
nnoremap <S-k> 17k<cr>zz

autocmd  BufRead,BufNewfile *.cds setfiletype cds
autocmd  BufRead,BufNewfile *.bo setfiletype ob
autocmd  BufRead,BufNewfile *.txt setfiletype txt
nnoremap <leader>- :vertical resize -10<cr>   
nnoremap <leader>= :vertical resize +10<cr>   
nnoremap <leader>j :join <cr>   
"h highlights-args
au TextYankPost * silent! lua vim.highlight.on_yank()
"set scrolloff=9999999
nnoremap <silent>gh :0Gclog<cr>   
"https://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim
nmap cp :let @+ =expand("%")<cr>
let g:python3_host_prog="/usr/bin/python3"
map <Down> <C-d>zz
nnoremap <C-d> <C-d>zz
set scroll=15
nnoremap n nzzzn
nnoremap N Nzzzn

