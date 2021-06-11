
import 'package:db_flutter/pages/group/group_content.dart';
import 'package:flutter/material.dart';

class JKGroupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JKGroupContent(),
    );
  }
}
