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

### 注册github帐户

请先注册github帐户，并把github的用户名或者注册邮箱告知项目管理员（微信号：13601746256），申请加入项目。申请通过后，并接收邀请（ https://github.com/chenfengrugao/riscvv/invitations ），才可push修改。  

没有把github帐号加入项目，也是可以clone和pull的，只是不能push。  

### clone项目仓库到本地

```
git clone https://github.com/chenfengrugao/riscvv.git
```

### 在test目录尝试修改和push

```
cd test
gvim xxx.v

git add xxx.v
git commit -m "git push test"
git push
Username for 'https://github.com': <your github username>
Password for 'https://<your github username>@github.com': <your github password>
```

### 打开Verdi浏览RTL Code

```
make view_rtl
```

### 跑仿真

待补充  

