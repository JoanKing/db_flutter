
import 'dart:ffi';

import 'package:db_flutter/core/extension/dashed_line.dart';
import 'package:db_flutter/core/extension/star_rating.dart';
import 'package:db_flutter/model/home_model/home_list_model.dart';
import 'package:flutter/material.dart';

class JKHomeMovieItem extends StatelessWidget {
  final MovieItem movie;
  JKHomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      /// 底部边框的设置
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 8, color: Color(0xffe2e2e2)),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8,),
          buildContent(),
          SizedBox(height: 8,),
          buildFooter()
        ],
      ),
    );
  }

  // 1、头部布局
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
        "NO.${movie.rank}",
        style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 131, 95, 36)
        ),
      ),
    );
  }

  // 2、内容布局
  Widget buildContent() {
    return Row(
      // 交叉轴的对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 8,),
        Expanded(
          // IntrinsicHeight：固定高度
            child: IntrinsicHeight(
              child: Row(
                children: [
                  buildInfo(),
                  SizedBox(width: 8,),
                  buildContentLine(),
                  SizedBox(width: 8,),
                  buildContentWish()
                ],
              ),
            )
        )
      ],
    );
  }

  // 2.1、内容的图片
  Widget buildContentImage() {
    // 图片切圆角
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.network(movie.imageUrl, width: 100, height: 150, fit: BoxFit.cover,),
    );
  }

  // 2.2、电影的详细信息
  Widget buildInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(height: 4,),
          buildContentInfoRate(),
          SizedBox(height: 4,),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  // 2.2.1、详细信息的中间部分的头部
  Widget buildContentInfoTitle() {
    return Text.rich(
        TextSpan(
            children: [
              WidgetSpan(
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 24,
                  ),
                  alignment: PlaceholderAlignment.middle,
                  baseline: TextBaseline.ideographic
              ),
              /*
              WidgetSpan(
                child: Text(
                    movie.title,
                    style: TextStyle(fontSize: 18)
                ),
                alignment: PlaceholderAlignment.middle,
              ),
              */
              // 把每一个字体展开，然后再排布
              ...movie.title.runes.map((rune) {
                return WidgetSpan(child: Text(new String.fromCharCode(rune), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), alignment: PlaceholderAlignment.middle);
              }).toList(),
              WidgetSpan(
                child: Text(
                    "(${movie.playDate})",
                    style: TextStyle(fontSize: 16, color: Colors.grey)
                ),
                alignment: PlaceholderAlignment.middle,
              )
            ]
        )
    );
  }

  // 2.2.2、详细信息的中间部分的评分
  Widget buildContentInfoRate() {
    return Row(
      children: [
        JKStarRating(rating: double.parse(movie.rating), size: 20,),
        SizedBox(width: 4,),
        Text("${movie.rating}", style: TextStyle(fontSize: 14, color: Colors.grey),)
      ],
    );
  }

  // 2.2.3、详细信息的中间部分的描述
  Widget buildContentInfoDesc() {
    /// 类型
    final genresString = movie.genres.join(" ");
    /// 导演
    final directorString= movie.director.name;
    final actorString = movie.casts.map((e) => e.name).toList().join(" ");
    return Text(
      "$genresString / $directorString / $actorString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  // 2.3、内容的虚线
  Widget buildContentLine() {
    return Container(
      height: 120,
      child: JKDashedLine(
        axis: Axis.vertical,
        dashedWidth: .3,
        dashedHeight: 6,
        count: 10,
        color: Colors.grey,
      ),
    );
  }

  // 2.4、内容想看
  Widget buildContentWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/home/wish.png", width: 30,),
          Text("想看", style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 235, 170, 60)),)
        ],
      ),
    );
  }

  // 3、尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffe2e2e2),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Text(
        movie.originalTitle,
        style: TextStyle(
            fontSize: 16,
            color: Color(0xff666666)
        ),
      ),
    );
  }
}
