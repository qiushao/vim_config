let mapleader=";" "设置前导键为 ;
inoremap ;; <esc>

"插入一个空行
nnoremap <leader><cr> o<Esc>

"保存与退出
nnoremap <leader>wa :wa<cr>
nnoremap <leader>qa :qa<cr>

"按方向键切换窗口
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l
nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j


"切换标签页
nnoremap <C-H> gT
nnoremap <C-L> gt

"新建一个标签页
nnoremap te :tabedit

"quickfix 窗口开关
nnoremap cc :cclose<cr>
nnoremap co :copen<cr>
nnoremap cn :cn<cr>
nnoremap cp :cp<cr>

"goto end of line and start of line
nnoremap <leader>hh 1000h
nnoremap <leader>ll 1000l


"""""""""""""""" plugin shortcut settings start """""""""""""""""""""""""""""""""

" LeaderF settings start
" open file base on file name
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_RootMarkers = ['.vimproject']
nnoremap ,, :Leaderf file --nameOnly<cr> 
nnoremap <leader>fb :Leaderf buffer --nameOnly<cr> 
nnoremap <leader>ff :Leaderf function --nameOnly<cr> 
nnoremap <leader>fl :Leaderf line --cword --stayOpen --regexMode<cr><tab>
nnoremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --stayOpen --auto-jump", expand("<cword>"))<CR><CR>
nnoremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --stayOpen --auto-jump", expand("<cword>"))<CR><CR>
nnoremap <leader>fs :<C-U><C-R>=printf("Leaderf! gtags -g %s --stayOpen --auto-jump", expand("<cword>"))<CR><CR>
" LeaderF settings end

" NERDComment settings start
nnoremap cm :call NERDComment(0, "toggle")<cr>
" NERDComment settings end



" coc.vim settings start
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" coc.vim settings end

"""""""""""""""" plugin shortcut settings end """""""""""""""""""""""""""""""""
