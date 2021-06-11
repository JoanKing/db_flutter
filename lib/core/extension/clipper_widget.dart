import 'package:flutter/cupertino.dart';

class JKWidgetClipper extends CustomClipper<Rect> {
  /// 剪切的宽度
  double width;
  JKWidgetClipper(this.width);
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(JKWidgetClipper oldClipper) {
    return oldClipper.width != this.width;
  }
}