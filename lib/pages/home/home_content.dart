import 'package:db_flutter/model/home_model/home_list_model.dart';
import 'package:db_flutter/pages/home/home_service/home_request.dart';
import 'package:flutter/material.dart';

class JKHomeContent extends StatefulWidget {
  @override
  _JKHomeContentState createState() => _JKHomeContentState();
}

class _JKHomeContentState extends State<JKHomeContent> {

  /// 数据列表
  final List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    HomeRequest.requestMoveLIst().then((items) {
      print("item的数量：${items.length}\n 数据$items");
      setState(() {
        movies.addAll(items);
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text("${movies[index].title}"),
            leading: Image.network("${movies[index].imageUrl}"),
          );
        });
  }
}
