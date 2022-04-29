import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_json/pdata.dart';
class Services {
  Future<List<User>> getPData() async{
    final response = await http.get(Uri.https('jsonplaceholder.typicode.com', "users"));

    if(response.statusCode == 200){
      final List<User> users = usersFromJson(response.body);
      return users;
    } else{
      throw "Can't Found Data";
    }
  }
}

