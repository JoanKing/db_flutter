
import 'package:flutter/material.dart';

class JKSubjectContent extends StatefulWidget {

  @override
  _JKSubjectContentState createState() => _JKSubjectContentState();
}

class _JKSubjectContentState extends State<JKSubjectContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("影音内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
