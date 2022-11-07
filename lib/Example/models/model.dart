class UsersAnswer{
  late int success;
  late List<Users> usersList;

  UsersAnswer(this.success,this.usersList);

  factory UsersAnswer.fromJson(Map<String,dynamic> json){
    var jsonArray=json["kisiler"]  as List;
    List<Users> userList=jsonArray.map((jsonArrayObject) => Users.fromJson(jsonArrayObject)).toList();

    return UsersAnswer(json["success"] as int, userList);
  }
}

class Users{
  late String userId;
  late String userName;
  late String userPhone;

  Users(this.userId,this.userName,this.userPhone);

  factory Users.fromJson(Map<String,dynamic> json){
    return Users(json["kisi_id"] as String,json["kisi_ad"] as String , json["kisi_tel"] as String);
  }
}