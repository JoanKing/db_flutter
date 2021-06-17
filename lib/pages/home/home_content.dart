import 'package:db_flutter/pages/home/home_service/home_request.dart';
import 'package:flutter/material.dart';

class JKHomeContent extends StatefulWidget {
  @override
  _JKHomeContentState createState() => _JKHomeContentState();
}

class _JKHomeContentState extends State<JKHomeContent> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    HomeRequest.requestMoveLIst().then((items) {
      print("item的数量：${items.length}\n 数据$items");
    });
  }
  
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
