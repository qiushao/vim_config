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

"复制一次，重复粘贴
vnoremap p "0p

"""""""""""""""" plugin shortcut settings start """""""""""""""""""""""""""""""""

" LeaderF settings start
" open file base on file name
let g:Lf_ShowDevIcons = 0
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_RootMarkers = ['.vimproject']
let g:Lf_WindowHeight = 0.3
let g:Lf_WildIgnore = {
			\ 'dir': ['kernel','build','.vimproject','ccache','out'],
			\ 'file': ['*.so']
			\}

" 查找所有文件
nnoremap ,, :Leaderf file --nameOnly<cr>
" 查找已经打开的文件
nnoremap <leader>fb :Leaderf buffer --nameOnly<cr>
" 在当前文件中查找函数
nnoremap <leader>ff :Leaderf function --nameOnly<cr>
" 在所有文件中查找函数
nnoremap <leader>ft :Leaderf gtags --nameOnly<cr>
" 跳转到函数定义
nnoremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --stayOpen --auto-jump", expand("<cword>"))<CR><CR>
" 查找函数引用
nnoremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --stayOpen --auto-jump", expand("<cword>"))<CR><CR>
" 相当于 grep -nr <当前光标下的单词>
nnoremap <leader>fl :Leaderf line --cword --stayOpen --regexMode<cr><tab>
nnoremap <leader>fs :Leaderf rg --cword --stayOpen --regexMode<cr><tab>
" LeaderF settings end

" NERDComment settings start
" 注释当前行
nnoremap cm :call NERDComment(0, "toggle")<cr>
" NERDComment settings end

"""""""""""""""" plugin shortcut settings end """""""""""""""""""""""""""""""""

