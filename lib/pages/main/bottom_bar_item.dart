
import 'package:flutter/cupertino.dart';

class JKBottomBarItem extends BottomNavigationBarItem {
  /// 图片的名字
  final String iconName;
  /// tabbar的名字
  final String titleName;

  // gaplessPlayback: 切换图片无缝衔接
  JKBottomBarItem({this.iconName, this.titleName}): super(
      icon: Image.asset("assets/images/tabbar/$iconName.png", width: 32, gaplessPlayback: true,),
      activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32, gaplessPlayback: true,),
      label: titleName
  );
}