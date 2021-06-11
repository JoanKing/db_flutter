
import 'package:db_flutter/pages/main/main.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
        /// 点击的水波纹颜色改为透明的
        highlightColor: Colors.transparent
      ),
      /// 是否显示debug标识
      debugShowCheckedModeBanner: false,
      home: JKMainPage(),
    );
  }
}