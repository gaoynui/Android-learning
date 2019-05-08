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
查看设备安装包信息：  
adb shell dumpsys package --checkin p  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/dumpsys%E5%91%BD%E4%BB%A4%E6%9F%A5%E7%9C%8B%E5%AE%89%E8%A3%85%E5%8C%85.png?raw=true)  
### dumpsys是一个系统诊断命令，常用于找bug 
![](https://github.com/gaoynui/Android-learning/blob/master/pics/adb-shell-pumpsys%E5%B8%B8%E7%94%A8%E5%AD%90%E5%91%BD%E4%BB%A4.png?raw=true)
## adb devices 未授权问题解决(linux)
### 方法一
adb kill-server  
adb start-server
### 方法二
在设备上进入开发者模式，点击revoke usb debugging authorize相关的，取消允许usb授权调试  
adb kill-server  
adb start-server  
### 方法三
adb版本过低，adb version查看  
sudo apt-get update更新
### 方法四
（老版）  
在根目录下进入.android,找到adb_usb.ini，通过gedit或其他文本编辑器在文末加上对应设备VID（vendor ID）  
查看VID：  
lsusb  
（Google统一VID_16进制：18d1）
### 方法五
（最适用）  
进入.android文件夹删除adbkey，adbkey.pub文件（不放心的先备份,有些不存在adbkey.pub）  
再进行插拔usb接口，adb restart操作  
完成后会发现原文件夹下新出现adbkey和adbkey.pub文件（所以我也怀疑是adbkey.pub搞的鬼）  
打开设备就有接入提示
