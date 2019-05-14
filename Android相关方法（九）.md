## log
分log.v log.d log.i log.w log.e  
1、Log.v 的调试颜色为黑色的，任何消息都会输出，这里的v代表verbose啰嗦的意思，平时使用就是Log.v("","")。  
2、Log.d的输出颜色是蓝色的，仅输出debug调试的意思，但他会输出上层的信息，过滤起来可以通过DDMS的Logcat标签来选择。  
3、Log.i的输出为绿色，一般提示性的消息information，它不会输出Log.v和Log.d的信息，但会显示i、w和e的信息。  
4、Log.w的意思为橙色，可以看作为warning警告，一般需要我们注意优化Android代码，同时选择它后还会输出Log.e的信息。  
5、Log.e为红色，可以想到error错误，这里仅显示红色的错误信息，这些错误就需要我们认真的分析，查看栈的信息了。  
## margin
android:layout_marginLeft=“200dp”离左边框的位置，dp对应分辨率（或用marginStart代替）  
android:padding_left="1dp"内边距
## OnClickListener()
button事件监听  
针对button组件，但若用button创建实体会在其下的onClick()函数上报错，所以用view创建button对象。  

private View bt;  
bt = this.findViewById(R.id.bt);  
bt = setOnClickListener(new view.OnClickListener(){  
  @Override  
  public void onClick(View v){  
  //具体事件  
  }  
});  
## startActivityForResult() & onActivityResult()
如果想在Activity中得到新打开Activity 关闭后返回的数据，需要使用系统提供的startActivityForResult(Intent intent, int requestCode)方法打开新的Activity，新的Activity 关闭后会向前面的Activity传回数据，为了得到传回的数据，必须在前面的Activity中重写onActivityResult(int requestCode, int resultCode, Intent data)方法。  
第一个参数：一个Intent对象，用于携带将跳转至下一个界面中使用的数据，使用putExtra(A,B)方法，此处存储的数据类型特别多，基本类型全部支持。  
第二个参数：如果> = 0,当Activity结束时requestCode将归还在onActivityResult()中。以便确定返回的数据是从哪个Activity中返回，用来标识目标activity。
## AssetManager
资源管理器  
assetsMag = this.getAssets()获得资源管理器  
AssetFileDescriptor afd = assetsMag.OpenFd(path)
## mediaPlayer 下 setDataSource()
Sets the data source as a content Uri.   
@param context the Context to use when resolving the Uri   
@param uri the Content URI of the data you want to play   
public void setDataSource(Context context, Uri uri)  

Sets the data source (file-path or http/rtsp URL) to use.   
@param path the path of the file, or the http/rtsp URL of the stream you want to play   
public void setDataSource(String path)  

Sets the data source (FileDescriptor) to use. It is the caller’s responsibility
to close the file descriptor. It is safe to do so as soon as this call returns.  
@param fd the FileDescriptor for the file you want to play  
public void setDataSource(FileDescriptor fd)

Sets the data source (FileDescriptor) to use. The FileDescriptor must be 
seekable (N.B. a LocalSocket is not seekable). It is the caller’s responsibility 
to close the file descriptor. It is safe to do so as soon as this call returns.  
@param fd the FileDescriptor for the file you want to play  
@param offset the offset into the file where the data to be played starts, in bytes  
@param length the length in bytes of the data to be played  
public void setDataSource(FileDescriptor fd, long offset, long length) 

