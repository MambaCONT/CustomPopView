# CustomPopView
一个可以在任意位置，任意组件内的简单的弹出视图的封装
===========================
![baidu](https://github.com/MambaCONT/CustomPopView/blob/main/imags/1637057244035.jpeg?raw=true "百度logo")
****

|作者|BlackSnake|
|---|---

****

这是一个简单封装的pop视图的代码，可以在屏幕上以任何位置，任何组件内的widget为锚点弹出，锚点wedgit须由layoutWidget包裹，以便取到对应的context对象

### 使用举例：

#### 语法1
在连续几行的文本开头加入1个Tab或者4个空格。

    LayoutBuilder(builder: (anchorContext, constraints) {

	    CustomPopWidget.popView(
	        presentContext, anchorContext, _popContentWidget());
	        
	    return _buttonWidget();
	  })