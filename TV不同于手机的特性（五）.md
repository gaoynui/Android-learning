## 检查app是否运行在设备上-uiModeManager
![](https://img-blog.csdn.net/20161011223135968)
## 声明不需要的硬件特性-android:required = "false"
touchscreen,touchscreen emulator,telephony,camera,NFC,GPS,microphone,dendors,screen in portrait orientation
![](https://img-blog.csdn.net/20161011223212393)
## 检查硬件features
![](https://img-blog.csdn.net/20161011223506444)  
getPacketManager().hasSystemFeature("android.hardware.")
## GPS获取 允许用户搜索一个位置或静态位置提供者。  
![](https://img-blog.csdn.net/20161011223709306) 
locationManager
## 任何TV上的app activity是以断开和重连事件为条件的
