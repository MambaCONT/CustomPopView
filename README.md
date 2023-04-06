![ss](https://github.com/MambaCONT/CustomPopView/blob/main/imags/1637057244035.jpeg?raw=true "BSlogo")

# CustomPopView
一个可以在任意位置，任意组件内的简单的弹出视图的封装
===========================
****

|Author|BlackSnake|
|---|---

****

这是一个简单封装的pop视图的代码，可以在屏幕上以任何位置，任何组件内的widget为锚点弹出，锚点wedgit须由layoutWidget包裹，以便取到对应的context对象

### 使用举例：


```Java
    LayoutBuilder(builder: (anchorContext, constraints) {

    CustomPopWidget.popView(
        presentContext, anchorContext, _popContentWidget());
        
    return _buttonWidget();
  })
    /// presentContext直接使用全局context即可