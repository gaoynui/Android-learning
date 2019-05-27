将APK反编译成开发时的源码  
工具:  
1.apktool(apk的资源文件和布局文件)  
sudo apt install apktool  
2.dex2jar(将apk反打包成jar包)  
https://github.com/pxb1988/dex2jar/releases  
3.jd-GUI(识别jar包呈现源码)  
http://java-decompiler.github.io/
## 步骤
### 1.apktool d [apk-path]
生成apk同名文件  
![]()
### 2.sh d2j-dex2jar.sh [path]
在当前目录下生成apk对应jar包  
![]()
### 3.运行jd-GUI加载jar包
![]()
