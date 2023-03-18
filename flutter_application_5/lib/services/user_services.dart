import 'dart:convert';

import 'package:flutter_application_5/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String url = "https://reqres.in/api/users?page=2";
  // ignore: body_might_complete_normally_nullable
  Future<UsersModel?> fetchUsers() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var jsonBody = UsersModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      // ignore: avoid_print
      print("İstek başarısız oldu.");
    }
  }
}
