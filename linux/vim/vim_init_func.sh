
# --------------------------------------------------------------- #
#					vim 初始化函数脚本							  #
# --------------------------------------------------------------- #

# ---------------------------引入脚本---------------------------- #

source ./vim_reset_func.sh

# -----------------------------函数区---------------------------------- #

# 安装插件管理器 plug
function install_plug(){
	sh_cache_dir=.Cache
	vplug_dir=~/.vim/autoload

	echo -e "\e[96m安装 \e[92mvim-plu \e[96m插件管理器...\n \e[0m"
#	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	# 检测 ~/.vim/autoload 目录是否存在
	# 不存在就创建
	if [ ! -d $vplug_dir ];then
		echo -e "\e[92m$vplug_dir \e[96m目录不存在！\n \e[0m"
		echo -e "\e[96m创建 \e[92m$vplug_dir \e[96m目录...\n \e[0m"
		mkdir $vplug_dir
	else
		echo -e "\e[92m$vplug_dir \e[96m目录已存在！\n \e[0m"
	fi
	
	# 下载 vim-plug
	if [ -d $sh_cache_dir ];then
		echo -e "\e[96m开始下载vim-plug...\n \e[0m"
		git clone https://github.com/junegunn/vim-plug $sh_cache_dir/vim-plug
		
		# 复制 plug.vim 到 ~/.vim/autoload 目录
		if [ -d "$sh_cache_dir/vim-plug" ];then
			# plug.vim 文件
		    plug_file=$sh_cache_dir/vim-plug/plug.vim	
			echo -e "\e[96m复制 \e[92mplug.vim \e[96m文件至 $vplug_dir \e[96m目录中...\n \e[0m"
			cp $plug_file $vplug_dir
		else
			echo -e "\e[93mvim-plug 下载失败！\n \e[0m"
		fi
	else
		echo -e "\e[93m$sh_cache_dir \e[96m目录不存在！\n \e[0m"
	fi

}

# 安装相关的软件
function install_misc(){
	# 安装 figlet
	# figlet 用于被startify插件调用生成vim起始页面图案
	echo -e "\e[96m安装 \e[92mfiglet，用于生成vim起始页面图案...\n \e[0m"
	sudo pacman -S figlet
}

# 复制配置文件到.vim目录
function copy_config(){

	cf_dir=configs
	vim_dir=~/.vim

	# 复制 configs 目录到 ~/.vim 目录中
	if [ -d "./$cf_dir" ];then
		echo -e "\e[96m复制 \e[92m$cf_dir \e[96m至 \e[92m$vim_dir \e[96m目录...\n \e[0m"
		cp -rf ./$cf_dir $vim_dir
	else
		echo -e "\e[93m$cf_dir 目录不存在！\n \e[0m"
	fi

	# 复制 .vimrc（非初始化配置） 到用户根目录（如果用户根目录已存在，就覆盖）
	if [ -f ".vimrc" ];then
		echo -e "\e[96m复制 \e[92m'.vimrc' \e[96m至 \e[92m'$HOME'目录...\n \e[0m"	
		cp -f .vimrc $HOME
	else
		echo -e "\e[92'.vimrc' 文件不存在！\n \e[0m"		
	fi

}

# 初始化
function vim_init(){

	# 重置
	# 生成.vim目录及初始化.vimrc
	resetAll
	
	# 安装依赖的软件
	install_misc

	# 安装vim-plug插件管理器
	install_plug

	# 复制配置文件
	copy_config

}



# --------------------------测试------------------------------------- #

vim_init



