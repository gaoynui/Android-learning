# 四大组件
## Activity
activity在安卓中代表屏幕，提供GUI界面，大部分app有多个屏幕组成。  
#### 生命周期：  
首次创建：onCreate()  
显示给用户：onStart()  
位于前台，位于栈顶：onResume()。  
另一个Activity需覆盖当前Activity时，调用onPause()，将前一个Activity的数据保存起来。  
如果让前一个Activity不再显示，调用onStop()停止；如果让其回到前台重新获得焦点，调用onResume()  
onStop()后，可以调用onDestory()销毁该Activity，也可以finish()关闭
## Service
定义一个Server两种方法：  
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
## Content Provider
## Broadcast Receiver
android广播：  
1.用于不同组件间的通信（应用内，应用外）  
2.用于多线程通信  
3.与android系统的通信  
# 五大存储方式
## SharedPreferences
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
## SQlist
## content Provider存储
## 网络存储
## 文件存储
