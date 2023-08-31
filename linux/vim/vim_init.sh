
# --------------------------------------------------------------- #
#						vim 初始化脚本							  #
# --------------------------------------------------------------- #

# ---------------------------引入脚本---------------------------- #

source ./vim_reset_func.sh

# -----------------------------函数区---------------------------------- #

# 安装插件管理器 plug
function install_plug(){
	echo -e "\e[96m安装 \e[92mvim-plu \e[96m插件管理器...\n \e[0m"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}

# 复制配置文件到.vim目录
function copy_config(){

	cf_dir=configs
	vim_dir=~/.vim

	if [ -d "./$cf_dir" ];then
		echo -e "\e[96m复制 \e[92m$cf_dir \e[96m至 \e[92m$vim_dir \e[96m目录...\n \e[0m"
		cp -rf ./$cf_dir $vim_dir
	else
		echo -e "\e[93m$cf_dir 目录不存在！\n \e[0m"
	fi

}

# 初始化
function vim_init(){

	# 重置
	resetAll
	
	# 安装vim-plug插件管理器
	install_plug

	# 复制配置文件
	copy_config

}



# --------------------------测试------------------------------------- #

vim_init




