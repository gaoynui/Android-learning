linux  
通过adb就能够很方便地通过USB与安卓系统进行交互
## 连接安卓设备
### 1.安装adb
sudo apt-get adb
### 2.将adb设为使能（一般第一步系统直接完成，如果第三步中未找到设备，执行）
进入sdk  
export [platform-tools路径]:[tools路径]
### 3.连接设备并查找
adb devices
## 发送文件
### 将adb目的设备设为读写模式
方法一：  
进入root：adb root
将默认交互文件夹system设为读写：adb remount  
方法二：  
进入目的设备shell： 
adb shell  
su
可通过cd,ls等基本命令查看文件  
将所有文件设为读写：  
进入shell,mount -rw,remount/system

删除文件同样  
exit退出shell
### 直接安装
adb install -r [apk路径]  
显示success即可，在目的机的appInstaller中本地安装
## 其他帮助
若adb没反应：
adb kill-server 再 adb start-server  
极端方法:通过Android Studio运行project来识别外接设备
