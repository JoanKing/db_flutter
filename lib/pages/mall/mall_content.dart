
import 'package:flutter/material.dart';

class JKMallContent extends StatefulWidget {

  @override
  _JKMallContentState createState() => _JKMallContentState();
}

class _JKMallContentState extends State<JKMallContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("市集内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
