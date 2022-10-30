import 'jsonParseSingleArray.dart';

class UsersAnswer{
  late bool success;
  late List<Users> usersList;

  UsersAnswer(this.success,this.usersList);

  factory UsersAnswer.fromJson(Map<String,dynamic> json){
    var jsonArray=json["users"]  as List;
    List<Users> userList=jsonArray.map((jsonArrayObject) => Users.fromJson(jsonArrayObject)).toList();

    return UsersAnswer(json["success"] as bool, userList);
  }
}