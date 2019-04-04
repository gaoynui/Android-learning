## Fragment
## relativeLayout
1.相对布局中首先要确定一个控件的位置，然后根据那个控件的id进行其他控件的摆放。  
2.xml文件都是顺序执行的，在摆放其他控件时，引用控件的id一定要在引用之前注册。  
3.顺序执行非常容易产生覆盖。  
## fragmentLayout
1，Fragment本身不是一个Activity，但可以通过Fragment.this.getActivity()或者直接getActivity()获得调用它的Activity。  
2，在fragment中，getView()是说从你Activity中得到它对应的xml布局，然后再通过findViewById()从那个布局中找到某个id的控件。view是activity的父类
