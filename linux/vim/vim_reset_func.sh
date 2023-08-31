
# ---------------------------------------------------- #
# 			重置函数脚本
# ---------------------------------------------------- #


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



# -----------------------测试----------------------------- #

#deleteAll


