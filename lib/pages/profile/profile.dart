
import 'package:db_flutter/pages/profile/profile_content.dart';
import 'package:flutter/material.dart';

class JKProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JKProfileContent(),
    );
  }
}
