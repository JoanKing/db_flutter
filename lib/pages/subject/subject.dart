
import 'package:db_flutter/pages/subject/subject_content.dart';
import 'package:flutter/material.dart';

class JKSubjectPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JKSubjectContent(),
    );
  }
}
