#!/bin/bash
#切换用户
echo -e "\033[31m 输入root密码 \033[0m"
sudo sleep 1s 
#准备
echo -e "\033[31m 即将开始搭建基本软件 \033[0m" 
# 切换源
#sudo neofetch 
echo -e "\033[31m 正在切换镜像源 \033[0m" 
sleep 1s
sudo pacman-mirrors -c China 
# 安装yay
echo -e "\033[31m 安装yay \033[0m" 
sleep 2s 
sudo pacman -S yay --noconfirm

# 安装文泉驿字体
yay -S wqy-zenhei --noconfirm
yay -S wqy-bitmapfont --noconfirm

# 安装输入法
yay -S fcitx5-im --noconfirm # 安装 fcitx5 输入法框架包 
yay -S fcitx5-chinese-addons --noconfirm # 安装中文输入法  
yay -S fcitx5-pinyin-zhwiki --noconfirm # 安装词库
echo -e "\nGTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" | sudo tee -a /etc/environment

# 安装常用工具
echo -e "\033[31m 即将安装常用工具 neofetch neovim man code v2raya google-chrome git ssh vim linuxqq wechat-uos \033[0m"
sleep 3s
sudo pacman -S neofetch neovim man code v2raya google-chrome git ssh vim linuxqq wechat-uos --noconfirm

# 配置git
ssh-keygen 
git config --global user.name "zhixi221"
git config --global user.email "zhixi221@gmail.com"
echo -e "\033[31m 安装完成 \033[0m"
sleep 3s 

