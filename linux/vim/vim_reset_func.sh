
# ---------------------------------------------------- #
# 			重置函数脚本
# ---------------------------------------------------- #

# 删除.vim目录及vimrc
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

  # 删除所有
  deleteAll
  
  # 生成 .vim 目录
  mkdir $vim_rdir 

  # 复制初始化.vimrc到用户根目录下
  echo -e "\e[96m生成 \e[92m$rc_file \e[96m...\n \e[0m"
  cp -f vim_init.vimrc $rc_file


}



# -----------------------测试----------------------------- #

#deleteAll

#resetAll
