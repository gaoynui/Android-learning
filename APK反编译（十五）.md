将APK反编译成开发时的源码  
## 工具:  
1.apktool(apk的资源文件和布局文件)  
sudo apt install apktool  
2.dex2jar(将apk反打包成jar包)  
https://github.com/pxb1988/dex2jar/releases  
3.jd-GUI(识别jar包呈现源码)  
http://java-decompiler.github.io/
## 步骤
### 1.apktool d [apk-path]
![](https://github.com/gaoynui/Android-learning/blob/master/pics/apktool.png?raw=true)  
生成apk同名文件  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/apktool%E7%94%9F%E6%88%90%E6%96%87%E4%BB%B6.png?raw=true)
### 2.sh d2j-dex2jar.sh [path]
在当前目录下生成apk对应jar包  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/%E5%8F%8D%E6%89%93%E5%8C%85%E6%88%90jar%E5%8C%85.png?raw=true)
### 3.运行jd-GUI加载jar包
![](https://github.com/gaoynui/Android-learning/blob/master/pics/jd-GUI.png?raw=true)
