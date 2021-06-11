
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JKDashedLine extends StatelessWidget {
  /// 方向
  final Axis axis;
  /// 虚线的宽度
  final double dashedWidth;
  /// 虚线的高度
  final double dashedHeight;
  /// 线的数量
  final int count;
  /// 线的颜色
  final Color color;

  JKDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = Colors.red
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}
