import 'package:flutter/material.dart';

class JKHomeContent extends StatefulWidget {
  @override
  _JKHomeContentState createState() => _JKHomeContentState();
}

class _JKHomeContentState extends State<JKHomeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text("这是第：$index 个"),
          );
        });
  }
}
