
import 'package:flutter/material.dart';

class JKGroupContent extends StatefulWidget {

  @override
  _JKGroupContentState createState() => _JKGroupContentState();
}

class _JKGroupContentState extends State<JKGroupContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("小组内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
