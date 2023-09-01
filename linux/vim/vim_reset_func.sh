
# ---------------------------------------------------- #
# 			重置函数脚本
# ---------------------------------------------------- #

# 清理脚本临时缓存
function clearCache(){

	sh_cache=.Cache

	if [ -d $sh_cache ];then
		echo -e "\e[96m清理 \e[92m$sh_cache \e[96m...\n \e[0m"	
		rm -rf $sh_cache/*
	else
		echo -e "\e[96m $sh_cache 不存在，不用清理了！\n \e[0m"	
	fi

}

# 创建shell临时缓存目录.Cache
function createCache(){
	sh_cache=.Cache

	if [ ! -d $sh_cache ];then
		echo -e "\e[96m创建 \e[92m$sh_cache \e[96m目录... \n \e[0m"	
		mkdir $sh_cache
	else
		echo -e "\e[96m $sh_cache 已存在！\n \e[0m"	
	fi

}


# 删除 .vim 目录及 .vimrc文件
function deleteAll(){

  rc_file=~/.vimrc
  vim_rdir=~/.vim

  # 删除 .vimrc
  if [ -f $rc_file ];then
    echo -e "\e[96m删除 \e[93m$rc_file \e[96m文件...\n \e[0m"
    rm ~/.vimrc
  else
    echo -e "\e[93m$rc_file \e[96m文件不存在，不用删除了! \n \e[0m"
  fi

  # 删除 .vim 目录
  if [ -d $vim_rdir ];then
    echo -e "\e[96m删除 \e[93m$vim_rdir \e[96m目录...\n \e[0m"
    rm -rf ~/.vim
  else
    echo -e "\e[93m$vim_rdir \e[96m目录不存在，不用删除了! \n \e[0m"
  fi

}

# 重置所有
function resetAll(){
  
	rc_file=~/.vimrc
	vim_rdir=~/.vim
	sh_cache=.Cache

	# 删除所有
    # 删除 .vim 目录
	# 删除 .vimrc 文件
	deleteAll
  
	# 生成shell脚本缓存目录
	# 这个目录用来存一些临时文件
	if [ ! -d $sh_cache ];then
		echo -e "\e[96m生成shell脚本临时目录 \e[92m$sh_cache \e[96m...\n \e[0m"
		mkdir $sh_cache  
	else
		echo -e "\e[92m$sh_cache \e[96m已存在 ...\n \e[0m"
		# 清理 .Cache 目录
		clearCache
	fi

	###############################################

	# 生成 .vim 目录
	echo -e "\e[96m生成 \e[92m$vim_rdir \e[96m...\n \e[0m"
	mkdir $vim_rdir 

	# 复制初始化配置 vim_init.vimrc 到用户根目录下完成初始化
	echo -e "\e[96m生成 \e[92m$rc_file \e[96m...\n \e[0m"
	cp -f vim_init.vimrc $rc_file

}



# -----------------------测试----------------------------- #

#deleteAll

#resetAll

#clearCache

#createCache

