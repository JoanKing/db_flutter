
import 'package:flutter/cupertino.dart';

class JKBottomBarItem extends BottomNavigationBarItem {
  /// 图片的名字
  final String iconName;
  /// tabbar的名字
  final String titleName;

  JKBottomBarItem({this.iconName, this.titleName}): super(
      icon: Image.asset("assets/images/tabbar/$iconName.png", width: 32,),
      activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32,),
      label: titleName
  );
}