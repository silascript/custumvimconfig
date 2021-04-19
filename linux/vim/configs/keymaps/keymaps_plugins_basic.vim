
" -----------------------------------------
"			插件快捷键设置及说明
" ----------------------------------------- 

" g:plug_home
" g:plugs 这个是返回plug中插件列表

" -----------------------------
"		nerdcommenter key 
" -----------------------------
" 默认快捷键
" 注释 <leader>cc 
" 取消注释 <leader>c<space> 或者 <leader>cu


" -----------------------------
"	 cosco 自动添加分号插件
" -----------------------------

let s:cocoresult=commands_basic#ExistPlug('lfilho/cosco.vim')
if s:cocoresult ==? 1
	autocmd FileType c,cpp,java,javascript,css,rust,dart nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
	autocmd FileType c,cpp,java,javascript,css,rust,dart imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

endif

" -----------------------------
"		UndoTree key
" -----------------------------
let s:udtresult=commands_basic#ExistPlug('mbbill/undotree')
if s:udtresult ==? 1
	"映射快捷键
	nnoremap <leader>udt :UndotreeToggle <CR>
endif


" -----------------------------
"		nerdtree keymap
" -----------------------------

let s:ntreeresult=commands_basic#ExistPlug('preservim/nerdtree')

if s:ntreeresult ==? 1
	
	command Ntr :NERDTreeToggle
	
endif




" -----------------------------
"		defx keymap
" -----------------------------


let s:defxresult=commands_basic#ExistPlug('Shougo/defx.nvim')

if s:defxresult ==? 1
	autocmd FileType defx call s:defx_mappings()

	function! s:defx_mappings() abort
	  nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()                     
	  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
	endfunction
	
	function! s:defx_toggle_tree() abort
		" Open current file, or toggle directory expand/collapse
		if defx#is_directory()
			return defx#do_action('open_or_close_tree')
		endif
		return defx#do_action('multi', ['drop'])
	endfunction

	"autocmd FileType denite call s:denite_my_settings()
	"function! s:denite_my_settings() abort
	  "nnoremap <silent><buffer><expr> <CR>
	  "\ denite#do_map('do_action')
	  "nnoremap <silent><buffer><expr> d
	  "\ denite#do_map('do_action', 'delete')
	  "nnoremap <silent><buffer><expr> p
	  "\ denite#do_map('do_action', 'preview')
	  "nnoremap <silent><buffer><expr> q
	  "\ denite#do_map('quit')
	  "nnoremap <silent><buffer><expr> i
	  "\ denite#do_map('open_filter_buffer')
	  "nnoremap <silent><buffer><expr> <Space>
	  "\ denite#do_map('toggle_select').'j'
	"endfunction

endif
