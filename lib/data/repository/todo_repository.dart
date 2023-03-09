import 'package:dio/dio.dart';
import 'package:flutter_pagination/data/model/todo_model.dart';

import '../const/const.dart';

Future<List<TodoModel>> getTodo(int limit) async {
  Dio dio = Dio();
  final response = await dio.get('${Constants.url}?_starts=0&_limit=$limit');
  print(response.data);
  if (response.statusCode == 200) {
    List<TodoModel> todo =
        response.data.map((e) => TodoModel.fromJson(e)).toList();
    print('todo-->$todo');
    return todo;
  } else {
    throw Exception('Failed to load todos');
  }
}
