import 'package:db_flutter/core/extension/clipper_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JKStarRating extends StatefulWidget {
  /// 评分
  final double rating;
  /// 最大评分
  final double maxRating;
  /// 星星的数量
  final int count;
  /// 星星的大小
  final double size;
  /// 未选中的星星颜色
  final Color unselectedColor;
  /// 选中的星星颜色
  final Color selectedColor;
  /// 未选中的图片
  final Widget unselectedImage;
  /// 选中的图片
  final Widget selectedImage;

  JKStarRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget unselectedImage,
    Widget selectedImage
  }): unselectedImage = unselectedImage ?? Icon(Icons.star_border, color: unselectedColor, size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size,);

  @override
  _JKStarRatingState createState() => _JKStarRatingState();
}

class _JKStarRatingState extends State<JKStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar()
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        ),
      ],
    );
  }

  /// 默认的星星创建
  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  /// 选中的星星创建
  List<Widget> buildSelectedStar() {
    final star = widget.selectedImage;
    // 1、创建stars
    List<Widget> stars = [];
    // 2、构建满星的star
    // 一个星多少分
    double oneValue = widget.maxRating / widget.count;
    /// 几个满星
    int entireCount = (widget.rating / oneValue).floor();
    stars.addAll(List.generate(entireCount, (index) {
      return star;
    }));
    // for (var i = 0; i < entireCount; i++) {
    //   stars.add(star);
    // }

    // 3、构建部分填充的star
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper: JKWidgetClipper(leftWidth),
      child: star,
    );
    stars.add(halfStar);

    // 防止越界
    if (stars.length > widget.count) {
      return stars.sublist(0, widget.count);
    }
    return stars;
  }
}
