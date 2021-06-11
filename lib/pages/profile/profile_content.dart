
import 'package:flutter/material.dart';

class JKProfileContent extends StatefulWidget {

  @override
  _JKProfileContentState createState() => _JKProfileContentState();
}

class _JKProfileContentState extends State<JKProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
