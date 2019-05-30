## Fragment
1.Fragment本身不是一个Activity，但可以通过Fragment.this.getActivity()或者直接getActivity()获得调用它的Activity。  
2.在fragment中，getView()是说从你Activity中得到它对应的xml布局，然后再通过findViewById()从那个布局中找到某个id的控件。view是activity的父类  
3.一定要设置某fragment名字，android:name=""
## relativeLayout
1.相对布局中首先要确定一个控件的位置，然后根据那个控件的id进行其他控件的摆放。  
2.xml文件都是顺序执行的，在摆放其他控件时，引用控件的id一定要在引用之前注册。  
3.顺序执行非常容易产生覆盖。  

相对于兄弟元素  
    android:layout_below="@id/aaa"：在指定View的下方  
    android:layout_above="@id/xxx"：在指定View的上方  
    android:layout_toLeftOf="@id/bbb"：在指定View的左边  
    android:layout_toRightOf="@id/cccc"：在指定View的右边相对于兄弟元素  
    android:layout_below="@id/aaa"：在指定View的下方  
    android:layout_above="@id/xxx"：在指定View的上方  
    android:layout_toLeftOf="@id/bbb"：在指定View的左边  
    android:layout_toRightOf="@id/cccc"：在指定View的右边  
  相对于父元素  
   android:layout_alignParentLeft="true"：在父元素内左边  
   android:layout_alignParentRight="true"：在父元素内右边  
   android:layout_alignParentTop="true"：在父元素内顶部  
   android:layout_alignParentBottom="true"：在父元素内底部  
  对齐方式  
  android:layout_centerInParent="true"：居中布局  
  android:layout_centerVertical="true"：水平居中布局  
  android:layout_centerHorizontal="true"：垂直居中布局  
  android:layout_alignTop="@id/xxx"：与指定View的上边界一致  
  android:layout_alignBottom="@id/xxx"：与指定View下边界一致  
  android:layout_alignLeft="@id/xxx"：与指定View的左边界一致  
  android:layout_alignRight="@id/xxx"：与指定View的右边界一致  
  间隔  
  android:layout_marginBottom=""; 离某元素底边缘的距离  
  android:layout_marginLeft=""; 离某元素左边缘的距离  
  android:layout_marginRight ="";离某元素右边缘的距离  
  android:layout_marginTop=""; 离某元素上边缘的距离  
  android:layout_paddingBottom=""; 离父元素底边缘的距离  
  android:layout_paddingLeft=""; 离父元素左边缘的距离  
  android:layout_paddingRight ="";离父元素右边缘的距离  
  android:layout_paddingTop=""; 离父元素上边缘的距离  
## fragmentLayout
更适合控件有动画效果;所有控件默认摆放在左上角
## linearLayout
需要设置方向：android:orientation="vertical/horizontal"  

<?xml version="1.0" encoding="utf-8"?>  
<LinearLayout xmlns:android=""  
    android:layout_width="match_parent"  
    android:layout_height="match_parent"  
    android:orientation="horizontal"  
    android:background="#ffffff">  
    
    <EditText  
        android:id="@+id/editText2"  
        android:layout_width="0dp"  
        android:layout_height="wrap_content"  
        android:layout_weight="1"  
        android:ems="10"  
        android:inputType="textEmailAddress" />  
    <Button  
        android:id="@+id/editText"  
        android:layout_width="0dp"  
        android:layout_height="wrap_content"  
        android:layout_weight="1"  
        android:ems="10"  
        android:hint="send"  
        android:inputType="textPassword" />  
 </LinearLayout>  
 layout_weight相对于其他text，text1:text2:...  
 
 
## 屏幕适配
DIP：px = dp * (dpi / 160)  
按照当前配置筛选，最优  
Locale,Screen orientation, Screen pixel density, Touchscreen type, Primary text input method
