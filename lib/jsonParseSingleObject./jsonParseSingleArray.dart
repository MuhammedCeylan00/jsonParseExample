class Users{
  late int userId;
  late String userName;
  late String userPhone;

  Users(this.userId,this.userName,this.userPhone);

  factory Users.fromJson(Map<String,dynamic> json){
    return Users(json["userId"] as int,json["userName"] as String , json["userPhone"] as String);
  }
}