## 项目step-by-step

### 升级git到2.17版本以上，以支持https协议进行git push

安装依赖库
```
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
```

下载git源码，并安装
```
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.18.0.tar.gz
tar -zxvf git-2.18.0.tar.gz
cd git-2.18.0
make prefix=/usr/local all
sudo make prefix=/usr/local install
```

确认安装目录里是否存在git_remote-https
```
ls /usr/local/libexec/git-core/git-remote-https
```

官网帮助文档：[https://git-scm.com/docs](https://git-scm.com/docs)  


### clone项目仓库到本地

```
git clone https://github.com/chenfengrugao/riscvv.git
```

### 打开Verdi浏览RTL Code

```
make view_rtl
```

### 跑仿真

待补充  

