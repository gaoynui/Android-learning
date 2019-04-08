# 四大组件
## 一 Activity
activity在安卓中代表屏幕，提供GUI界面，大部分app有多个屏幕组成。  
每个Activity都会有一个用于绘制用户界面的窗口。通常这样一个窗口会填充整个屏幕，当然这个窗口也可以比屏幕小并漂浮在其他窗口之上。 Activity还可以使用一些额外的窗口，例如一个要求用户响应的弹出式对话框，或者是当用户在屏幕上选择一个条目后向用户展现一些重要信息的窗口。
#### 生命周期：  
首次创建：onCreate()  
显示给用户：onStart()  
位于前台，位于栈顶：onResume()。  
另一个Activity需覆盖当前Activity时，调用onPause()，将前一个Activity的数据保存起来。  
如果让前一个Activity不再显示，调用onStop()停止；如果让其回到前台重新获得焦点，调用onResume()  
onStop()后，可以调用onDestory()销毁该Activity，也可以finish()关闭
## 二 Service
Service组件运行时不可见，但它负责更新的数据源和可见的Activity，以及触发通知。  
多媒体播放器播放音乐是应用Service的一个非常好的例子。多媒体播放器程序可能含有一个或多个Activity，用户通过这些 Activity选择并播放音乐。然而，音乐回放并不需要一个Activity来处理，因为用户可能会希望音乐一直播放下去，即使退出了播放器去执行其它程序。为了让音乐一直播放，多媒体播放器Activity可能会启动一个Service在后台播放音乐。Android系统会使音乐回放Service一直运行，即使在启动这个Service的Activity退出之后。

应用程序可以连接到一个正在运行中的Service。当连接到一个Service后，可以使用这个Service向外暴露的接口与这个Service进行通信。对于上面提到的播放音乐的Service，这个接口可能允许用户暂停，停止或重新播放音乐。

与activity以及其它组件一样，Service同样运行在应用程序进程的主线程中。所以它们不能阻塞其它组件或用户界面，通常需要为这些Service派生一个线程执行耗时的任务。
### 定义一个Server两种方法：  
1.项目内Server包右键->New->Service->>Service  
2.继承class类，重写IBinder(),onCreate(),onStartCommand(),onDstory()方法

每个服务需要在androidManifest.xml注册才生效  
前台服务较普通服务会一直有一个运行图标在系统状态栏

#### 避免代码在服务主线程中出现ANR（Application not responding），需要用到多线程编程：  
public class MySerivce extends Servcie{  
	...  
	@Override  
	public int onStartCommand(Intent intent, int flats , int startId){  
     new Thread(new Runnable(){  
			public void run(){  
				//处理具体的逻辑  
				stopSelf();  
			}  
		});  
	}  
}  
或者调用IntentService:  
Intent intent = new Intent(this, MyIntentService.class);  
startServcie(intent);
## 三 Content Provider
管理和共享应用程序数据库
## 四 Broadcast Receiver
android广播：  
1.用于不同组件间的通信（应用内，应用外）  
2.用于多线程通信  
3.与android系统的通信  
## Intent
连接其他组件的桥梁
# 五大存储方式
## 一 SharedPreferences
使用键值对的方式进行存储数据。  

#### 获取SharedPreferences对象:  
context类中的getSharedPreferences()方法，该方法有两个参数，第一个指定sharedPreferences文件
的名称（如果不存在则新建），第二个参数指定操作模式：  
SharedPreferences.Editor editor = getSharedPreferences("data",MODE_PRIVATE).edit();  
editor.putString("name", "Tom");  
editor.putInt("age",13);  
editor.putBoolean("married",false);  
editor.apply();  
#### 向SharedPreferences文件存储数据
1.调用SharedPreferences对象的edit()方法来获取一个SharedPreferences.Editor对象  
2.向SharedPreferences.Editor对象添加数据，putString(),putInt(),putBoolean()  
3.调用apply()方法提交添加的数据，完成数据存储。见前面代码。
#### 从SharedPreferences对象读取数据
SharedPrefences sp = getSharedpreferences("fileName",0);  
String name = sp.getString("name", "");  
int age = sp.getInt("age", "");
## 二 SQlist
#### 创建或打开数据库
SQLiteOpenHelper类下的getReadableDatabase()和getWritableDatabase()两个实例方法。返回一个
可对数据库进行读写操作的对象。
## 三 content Provider存储
## 四 网络存储
## 五 文件存储
