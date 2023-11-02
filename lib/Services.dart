// import 'dart:convert';
// import 'package:http/http.dart' as http;

// getUsers()
// async {
//   var api = "https://jsonplaceholder.typicode.com/users/";
// var url = Uri.parse(api);
// final reponse = await http.get(url);
// var data = jsonDecode(reponse.body);
// print(data[0]);
// }
import 'dart:convert';

import 'package:current3/Model/user_model.dart';
import 'package:http/http.dart' as http;

Future<List<UserModel>> getUsers() async {
  var api = "https://jsonplaceholder.typicode.com/users/";
  var url = Uri.parse(api);
  
  final response = await http.get(url);
var data = jsonDecode(response.body);

List <UserModel>  user = [];
for (var json in data) {
  user.add(UserModel.fromJson(json));
  
}
return user;
}