vim9script

# ------------------------
#     vim-lsc 插件配置
# ------------------------

# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

# vim-lsc 插件配置
var vimlsc_result = commands_basic.ExistPlug('natebosch/vim-lsc')
if vimlsc_result == 1

	# autocmd CompleteDone * silent! pclose

	g:lsc_enable_autocomplete  = true
	# let g:lsc_enable_diagnostics   = v:false
	# let g:lsc_reference_highlights = v:false

	# let g:lsc_auto_map = v:true
	set completeopt=menu,menuone,noinsert,noselect

	# 补全触发字符长度
	g:lsc_autocomplete_length = 1


	# 为语言指定lsp
	# let g:lsc_server_commands = {'c':'clangd'}
	# let g:lsc_server_commands = {'java': 'jdtls'}
	# let g:lsc_server_commands = {'python':'pyls'}


	g:lsc_server_commands = {
		 'c': {
			     'command': 'clangd --background-index',
			 	  'suppress_stderr': true
		 	},
		  'cpp': {
			 	'command': 'clangd --background-index',
			   'suppress_stderr': true
		  },
		  'python': {
			   'command': 'pylsp'
		  },
		  'rust': {
			   # 'command': 'rls'
			   'command': 'rust-analyzer'
		  },
		  'go': {
			  'command': 'gopls'
		  },
		  'javascript': {
			  'command': 'typescript-language-server --stdio'
		  },
		  'typescript': {
			  'command': 'typescript-language-server --stdio'
		  },
		  'html': {
			  'command': 'html-languageserver --stdio'
		  },
		  'css': {
			  'command': 'css-languageserver --stdio'
		  },
		  'markdown': {
			  'command': 'marksman server'
		  },
	 }


	# let g:lsc_server_commands = {
     # \ 'java': {
     # \    'command': 'jdtls'
     # \  },
     # \}

endif

