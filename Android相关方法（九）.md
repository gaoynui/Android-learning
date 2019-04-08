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
  public void onClick(View bt){  
  //具体事件  
  }  
});  
