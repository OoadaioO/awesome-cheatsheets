#*****************************************************************
# make 安装文件
#*****************************************************************
#./configure 配置
--help                                  #获取帮助
--without                               #使用默认配置
--with                                  #指定配置 
--prefix=PATH                           #指定安装目录
--conf-path=PATH                        #指定配置文件路径
--user=name                             #设置工作进程用户




#*****************************************************************
# nginx
#*****************************************************************
nginx                                   #启动
nginx -s stop                           #关闭
nginx -s reload                         #重启
pkill nginx                             #强制关闭
nginx -t                                #测试配置文件是否正常


#*****************************************************************
# centos 创建网站管理用户
#*****************************************************************
groupadd www                                        #创建用户组
useradd --shell /sbin/nologin -g www www            #创建用户并设置用户组
chown -R wwww:wwww /home/www                        #



#*****************************************************************
# centos ftp 服务搭建
#*****************************************************************
# 1. 安装ftp
yum install vsftpd

# 2. 配置默认文件：/etc/vsftpd/vsftpd.conf
# anonymous_enable=NO   禁用匿名用户登录
# ↓ 根目录改为用户 home目录
# chroot_local_user=YES  去掉注释
# chroot_list_file=/etc/vsftpd/chroot_list  去掉注释
# userlist_deny=NO  加到末尾，设置只允/etc/vsftpd/user_list配置用户登录

# 3.创建用户
# 用户名 ftp_user 设置home目录 /data/ftp
useradd $username -s /sbin/nologin -d /data/ftp
# 修改用户密码:
passwd $username

# 修改配置: /etc/vsftpd/chroot_list 添加限制用户 ftp_user
# 修改配置: /etc/vsftpd/user_list   添加用户 ftp_user

# 添加ftp服务器自启动: 
chkconfig vsftpd on
# 启动ftp服务
service vsftpd start
# 停止ftp服务
service vsftpd stop

# 卸载vsftpd 
#删除/etc/vsftpd目录可完全删除
rpm -e vsftpd 

#查看ftp 运行状态
ps aux | grep ftp
ps -ef | grep ftp
service vsftpd status




