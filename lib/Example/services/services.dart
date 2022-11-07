import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/model.dart';
List<Users> parseUsersAnswer (String answer){
  print(UsersAnswer.fromJson(json.decode(answer)).success);
  print("---------------------");
  return UsersAnswer.fromJson(json.decode(answer)).usersList;
}
Future<List<Users>> allUsers() async {
  // var url=Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php");
  //var response = await http.get(url);

  var dio = Dio();
  final response = await dio.get('http://kasimadalan.pe.hu/kisiler/tum_kisiler.php');
  return parseUsersAnswer(response.data);
}