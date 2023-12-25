import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practise_me/data/model.dart';

class ApiData {
  Future<Model> getData() async {
    print('sorov yuborildi');
    String url = 'https://randomuser.me/api/';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    print('sorov keldi');
    Map<String, dynamic> data = jsonDecode(response.body);
    Model model = Model.fromJson(data);
    print(model.results[0].email);
    return model;
  }
}
