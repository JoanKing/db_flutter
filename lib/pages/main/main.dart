

import 'package:db_flutter/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

class JKMainPage extends StatefulWidget {

  @override
  _JKMainPageState createState() => _JKMainPageState();
}

class _JKMainPageState extends State<JKMainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        /// 切换页面
        index: _currentIndex,
        children: mainPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        /// 切换底部的按钮
        currentIndex: _currentIndex,
        /// 对于4个要设置，不然不显示按钮
        type: BottomNavigationBarType.fixed,
        items: bottomBarItems,
        /// 未选中的颜色
        unselectedItemColor: Colors.grey,
        /// 选中的颜色
        selectedItemColor: Colors.green,
        /// 未选中的字体大小
        unselectedFontSize: 14,
        /// 选中的字体大小
        selectedFontSize: 14,
        onTap: (index) {
          setState(() {
            /// 更新选中的位置
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
