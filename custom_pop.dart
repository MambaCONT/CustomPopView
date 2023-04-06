import 'package:flutter/material.dart';

mixin CustomPopWidget {
  /// 可以在任意以widget为锚点的位置弹出自定义视图
  ///
  /// ·[presentContext]承载弹出Dialog的context，最好用全局根context
  ///
  /// ·[anchorContext]锚点widget对应的context
  ///
  /// ·[offset]弹出widget的偏移量
  ///
  /// ·[contentWidget]弹出的widget
  ///
  static popView(BuildContext presentContext, BuildContext anchorContext,
      Widget contentWidget,
      {Offset? offset}) {
    var renderObject = anchorContext.findRenderObject();
    if (renderObject is RenderBox) {
      var sourceOffset = renderObject.localToGlobal(Offset.zero);

      showGeneralDialog(
          context: presentContext,
          barrierDismissible: true,
          barrierLabel: '',
          barrierColor: Colors.transparent,
          transitionDuration: const Duration(milliseconds: 0),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.transparent,
                    ),
                    Positioned(
                        top: sourceOffset.dy + (offset?.dy ?? 0),
                        left: sourceOffset.dx + (offset?.dx ?? 0),
                        child: contentWidget)
                  ],
                ),
              ),
            );
          });
    }
  }
}
