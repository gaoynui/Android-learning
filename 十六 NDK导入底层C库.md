## 介绍
C语言较java更底层，所以有Java层下的native层，操作系统大多基于c进行实现，所以使用操作系统自带的库函数能够方便程序编写。
但是安卓由java实现并不能直接使用c函数库，所以需要借助NDK将c库函数编程java可用的库函数再导入使用。
## 路径
一般安装sdk时就已经安装了ndk:sdk/ndk-bundle  
也可以从官网下载新版本：https://developer.android.google.cn/ndk/downloads/index.html  
下载到sdk文件夹下即可，再加入PATH为了能够方便使用:  
export PATH=$PATH:[.sdk/ndk]  
通过 env | grep PATH 查看环境变量
## 准备
![](https://github.com/gaoynui/Android-learning/blob/master/pics/%E6%96%87%E4%BB%B6%E7%BB%84%E6%88%90.png)
### C库函数
### 头函数及依赖库
需将所有依赖放在mk文件同目录下，有些依赖会在ndk中自带，可能会在编译中报与原依赖发生冲突申明的warning,不影响。
### Android.mk
ndk识别的编译文件，整个编译的核心  
[Android.mk](https://github.com/gaoynui/Android-learning/blob/master/docs/Android.mk)
### Application.mk
主要告诉ndk编辑器需要生成哪些版本的java库，文件要有，但可以不说明，默认生成ndk支持的所有版本。
主要有arm64-v8a和armeabi-v7a
## 生成头文件
需要用到android.jar文件，在sdk/patforms/android-version/android.jar  
在项目对应的class目录下执行:  
(linux下jar路径后是：，windows下路径后是;)  
javah -classpath [android.jar]:. [头文件名全程，如com.example.test.testHead]  
成功后会在对应目录下生层.h文件，这里的目录指：  
在Android项目中一个包名就是一个文件夹，如com.example.test在文件系统中代表com/example/test  
而class问价是存放在项目目录下.../com/example/name/下，所以其实class文件是放在com.example.name处，
这样生成的.h文件就放在和com同级的目录下，如图：  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/%E7%94%9F%E6%88%90%E7%9A%84%E5%A4%B4%E6%96%87%E4%BB%B6.png?raw=true)
## 编译mk文件
在Android.mk路径下执行ndk-build  
### 问题
#### undefined modules
找不到对应模式，这在android.mk文件中发生，由于ndk版本问题，可以将其注释掉即可解决。  
或者在sdk/ndk/build/core/build_binary.mk的APP_ALLOW_MISSING_DEPS处加上如图：  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/undefiened%20modules.png?raw=true)
#### undefined reference to ""
这是常见错误，需要在android.mk文件中添加LOCAL_LDLIBS += -llog(liblog)  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/undefined%20reference.png?raw=true)
### 编译成功
![](https://github.com/gaoynui/Android-learning/blob/master/pics/success.png?raw=true)  
会在Android.mk文件的父文件同级下创建libs文件夹，下面就是不同型号对应的lib.so：  
![](https://github.com/gaoynui/Android-learning/blob/master/pics/%E7%94%9F%E6%88%90%E7%9A%84so%E6%96%87%E4%BB%B6.png?raw=true)
