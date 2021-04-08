

" let g:polyglot_disabled = ['markdown']
" let g:polyglot_disabled = ['markdown.plugin']

" ---------------------------
"		vim-Plug 配置
" ---------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" 开始页面
	Plug 'mhinz/vim-startify'
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" vim中文文档
	Plug 'yianwillis/vimcdoc'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'


	" 语法高亮增强
	Plug 'sheerun/vim-polyglot'

	" 真彩theme
	Plug 'morhetz/gruvbox'

	" 快速注释
	Plug 'scrooloose/nerdcommenter'
	
	" 彩虹括号
	Plug 'luochen1990/rainbow'

	" undo树
	Plug 'mbbill/undotree'

	" easy motion
	Plug 'easymotion/vim-easymotion'

	" 添加环绕符号 
	Plug 'tpope/vim-surround'
	
	" 快速选择括号中的元素
	Plug 'wellle/targets.vim'

	" 文件类型图标
	Plug 'ryanoasis/vim-devicons'

	" git相关
	" Plug 'airblade/vim-gitgutter'
	" Plug 'tpope/vim-fugitive'

	" snippet仓库
	Plug 'honza/vim-snippets'

	" Lorem Ipsum
	Plug 'vim-scripts/loremipsum'
	
	" tag相关
	Plug 'preservim/tagbar'
	
	" Git
	Plug 'tpope/vim-fugitive'

	" format
	Plug 'google/vim-maktaba'
	Plug 'google/vim-codefmt',{'on':['FormatCode','FormatLines']}

	" Plug 'plasticboy/vim-markdown'
	Plug 'masukomi/vim-markdown-folding'	

	" Preview
	Plug 'shime/vim-livedown',{'on':['LivedownPreview','LivedownToggle','LivedownKill']}

call plug#end()



" ----------------------------------
"			插件设置
" ----------------------------------

" ----------------------------
"		 strtify设置
" ----------------------------
let g:startify_files_number = 8
let g:startify_custom_header =[
            \ '			        __								   ',
            \ '		    __  __ /\_\    ___ ___					   ',
            \ '		   /\ \/\ \\/\ \ /'' __` __`\				   ',
            \ '		   \ \ \_/ |\ \ \/\ \/\ \/\ \				   ',
            \ '		    \ \___/  \ \_\ \_\ \_\ \_\				   ',
            \ '			 \/__/    \/_/\/_/\/_/\/_/				   ',
			\ '				                                       ',
            \ '',
            \ '',
            \ ] 


" ----------------------------
"		 airline设置
" ----------------------------

" let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['branch','tabline']

" buffer文件名及路径显示格式
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline样式设置
" let g:airline_theme = 'dark'
" let g:airline_theme = 'wombat'
let g:airline_theme = 'base16'

" 使用powerline font
" let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif


let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''

let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'


" unicode symbols
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
" let g:airline_symbols.linenr = '☰'

" -----------------------------
"		自动符号设置
" -----------------------------



" -----------------------------
" nerdcommenter 设置
" -----------------------------
" 默认快捷键
" 注释 <leader>cc 
" 取消注释 <leader>c<space> 或者 <leader>cu

" 注释时插入分隔符
let g:NERDSpaceDelims = 1
" 去除尾部空格 
" let g:NERDTrimTrailingWhitespace = 1

" 注释前插入空行
let g:NERDCommentEmptyLines = 1


" ---------------------------
"		NerdTree设置
" ---------------------------
" 映射快捷键
map <leader>nt :NERDTreeToggle <CR>

" 目录展开关闭的小图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -----------------------------
"		UndoTree设置
" -----------------------------
"映射快捷键
nnoremap <leader>udt :UndotreeToggle <CR>

" 设置undo文件存储
set undodir=~/.undodir/
set undofile



" -----------------------------
"			彩虹括号
" -----------------------------
" 启用或关闭彩虹括号
let g:rainbow_active = 1
" let g:rainbow_active = 0
" 配色
let g:rainbow_conf = {
\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
\	'ctermfgs': ['lightgreen', 'lightyellow', 'lightcyan', 'lightmagenta']
\	}


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on

" 设置折叠
" set foldenable 
" set nofoldenable 

" set foldmethod=syntax

" ft-markdown
" let g:markdown_folding = 1

" ---------------------------------------------------------
"						 surround使用
" ---------------------------------------------------------
" 添加双引号 ysiw+"
" 如果要添加tag符号，即尖括号可以使用快捷命令ysiwt
" 注意如果是ysiw<这方式，必须是左尖括号，才是成对tag
" 如果是ysiw> 使用了右尖括号,那就会变成单tag
" 替换格式: cs 符号 符号
" 如将tag符号即<>这种尖括号替换成其他符号可以使用cst快捷命令
" 删除格式: ds 符号
" 行包围符号格式: yss 符号
" 行包围添加小括号快捷命令: yssb
" 行包围尖括号得分两步：yss<或者ysst 然后输入尖括号中的内容
" 行包围尖括号道理同新加一样，分左尖括号和右尖括号，左双右单
"
" ---------------------------------------------------------



" -----------------------
"		缩进线设置
" -----------------------

" let g:indentLine_color_term = 239

" 缩进线字符设置
let g:indentLine_char = '┊'
" 可以使用不同层次不同的字符
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" -----------------------
"		GitGutter设置
" -----------------------
" 开启gitgutter
let g:gitgutter_enabled = 1

" -----------------------
"		TagBar设置
" -----------------------
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_width=25


" ------------------------
"		SnipMate设置
" ------------------------
let g:snipMate = {'snippet_version' : 1}


" ------------------------
"		Polyglot设置
" ------------------------

" vim-markdown
" markdown conceal 级别
" set conceallevel=0
" markdown conceal 禁用
let g:vim_markdown_conceal = 0
" markdown 代码块 conceal 禁用
let g:vim_markdown_conceal_code_blocks = 0 
" markdown 折叠
" 开启或禁用vim-markdown折叠功能
" 0:开启 1:禁用
" let g:vim_markdown_folding_disabled = 0
" 1-6 级别 没有指定默认是1
" let g:vim_markdown_folding_level = 3
" let g:vim_markdown_folding_style_pythonic = 0
" let g:vim_markdown_override_foldtext = 1


" ------------------------
"	vim-markdown-folding
" ------------------------
let g:markdown_fold_style = 'nested'
set foldlevel=3


" ------------------------------------------------
"			coc 相关配置
" ------------------------------------------------

" coc的配置
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
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
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

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
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

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



" coc 插件设置
let g:coc_global_extensions = ['coc-json', 'coc-git']


" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)





