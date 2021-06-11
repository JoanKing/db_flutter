
import 'package:db_flutter/pages/mall/mall_content.dart';
import 'package:flutter/material.dart';

class JKMallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JKMallContent(),
    );
  }
}
