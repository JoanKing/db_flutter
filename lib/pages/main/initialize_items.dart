
import 'package:db_flutter/pages/group/group.dart';
import 'package:db_flutter/pages/home/home.dart';
import 'package:db_flutter/pages/mall/mall.dart';
import 'package:db_flutter/pages/profile/profile.dart';
import 'package:db_flutter/pages/subject/subject.dart';
import 'bottom_bar_item.dart';
import 'package:flutter/cupertino.dart';

/// BottomNavigationBarItem
List<JKBottomBarItem> bottomBarItems = [
  JKBottomBarItem(iconName: "home", titleName: "首页"),
  JKBottomBarItem(iconName: "subject", titleName: "书影集"),
  JKBottomBarItem(iconName: "group", titleName: "小组"),
  JKBottomBarItem(iconName: "mall", titleName: "市集"),
  JKBottomBarItem(iconName: "profile", titleName: "我的"),
];

/// 主界面入口
List<Widget> mainPages = [
  JKHomePage(),
  JKSubjectPage(),
  JKGroupPage(),
  JKMallPage(),
  JKProfilePage()
];