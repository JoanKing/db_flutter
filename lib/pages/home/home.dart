
import 'package:db_flutter/pages/home/home_content.dart';
import 'package:flutter/material.dart';

class JKHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JKHomeContent(),
    );
  }
}
