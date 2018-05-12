
# EDA Environment Setting Up Guide

## 操作系统的选择

* 建议选centos7.4。  
* 操作系统选64位。
* boot分区设大一些，比如300M
* prj目录设在单独分区，方便系统重装

## 虚拟机、双系统、单linux

* 不熟悉的建议从虚拟机开始
* 有两台电脑的朋友可以考虑单linux
* 双系统安装比较麻烦，如硬盘分区、系统引导麻烦一些。

## gnome与KDE

* 看个人喜好

## shell选择

* bash、tcsh、zsh，看个人喜好。
  * bash更通用一些，支持函数等
  * csh语法更接近C语言
  * zsh智能提示功能比较有用，语法兼容bash

## 系统基础应用软件

* gvim, emacs等自己喜欢的编辑器，并安装常用插件。
* perl, tcl/tk, python, java等脚本及软件
    * 系统自带的可能是python2，自行升级python3
* gcc, g++, make等开发环境
* evince (pdf)
* libreoffice 6
* 输入法, system tools -> settings -> Region & Language，增加中文输入法
  * Win+Space 切换输入法（注意：不是ctrl+space）

## 常用linux命令

* su - 切换到管理员root用户
* ip addr 查看MAC地址
* ifconfig -a 也可查看MAC地址，需要自己安装ifconfig工具
* firewall-cmd 防火墙配置
* systemctl 服务
* yum install 安装
* rpm -ivh xxx  安装
* rpm -qa | grep xxx 查询是否安装
* rpm -e xxx 拆卸
* du -sh xxx 查看文件或文件夹总大小
* df -h 查看系统分区及硬盘使用比例
* kill -9 xxx 杀死进程
* ln -s abc abc_soft 软连接

## eda

* synopsys: vcs, verdi, spyglass
* 环境变量设置(bash, tcsh, zsh)
  * ~/.bashrc
    * export PATH=$PATH:/tools/xxx
  * ~/.tcshrc
    * setenv PATH $PATH:/tools/xxx
  * ~/.zshrc
    * 兼容bash
* license服务器的启动，及关闭
  * lmgrd -c /tools/license/xxx.dat -l /tools/license/xxx.log &
  * lmdown -c /tools/license/xxx.dat
  * lmstat 查看license服务器状态
* 非管理员启动license
  * 最好采用非管理员启动license, 具体做法把启动license的命令写到脚本（startlic）里，方便一点
  
