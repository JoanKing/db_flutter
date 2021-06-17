
import 'package:db_flutter/core/services/http_request.dart';
import 'package:db_flutter/core/urls/urls.dart';
import 'package:db_flutter/model/home_model/home_list_model.dart';

class HomeRequest {
  /// 首页电影列表
  static Future<List<MovieItem>> requestMoveLIst() async {
    // 1、发送网络请求
    final result = await HttpRequest.get(JKUrls.kUrlHomeMoveList);
    final subjects = result["subjects"];
    // 2、将Map转成Model
    List<MovieItem> items = [];
    for (var sub in subjects) {
      items.add(MovieItem.fromMap(sub));
    }
    return items;
  }
}