import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_data_parse/jsonParseSingleObject./Message.dart';
import 'package:json_data_parse/jsonParseSingleObject./jsonParseMixedData.dart';
import 'package:json_data_parse/jsonParseSingleObject./jsonParseSingleArray.dart';
class JsonParseStringObjectView extends StatefulWidget {
  const JsonParseStringObjectView({Key? key}) : super(key: key);

  @override
  State<JsonParseStringObjectView> createState() => _JsonParseStringObjectViewState();
}

class _JsonParseStringObjectViewState extends State<JsonParseStringObjectView> {
  void jsonParse(){
    String data='{"message":{"message_cod":1,"message_content":"I content data"}}';
    //Data string to json
    var jsonData=json.decode(data);
    //Data get
    var jsonObject=jsonData["message"];
    Message message=Message.fromJson(jsonObject);
   // print("Message id: ${message.message_cod}");
    print("Message content: ${message.message_content}");
  }

  void usersParse(){
    String strData='{"users":[{"userId":1,"userName":"Ali","userPhone":"1234567"},'
        '{"userId":2,"userName":"Mehmet","userPhone":"7894545"}]}';
    var jsonData=json.decode(strData);
    var jsonArray=jsonData["users"] as List;

    List<Users> usersList=jsonArray.map((jsonArrayObject)=>Users.fromJson(jsonArrayObject)).toList();

    for(var k in usersList){
      print(k.userId);
      print(k.userName);
      print(k.userPhone);
      print("**********");
    }
  }
  void usersAnswerParse(){
    String strData='{"success":true,"users":[{"userId":1,"userName":"Ali","userPhone":"1234567"},'
        '{"userId":2,"userName":"Mehmet","userPhone":"7894545"}]}';

    var jsonData=json.decode(strData);
    var usersAnswer=UsersAnswer.fromJson(jsonData);

    print("Success: ${usersAnswer.success}");
    List<Users> usersArray=usersAnswer.usersList;
    for(var k in usersArray){
     print(k.userId);
     print(k.userName);
     print(k.userPhone);
     print("******");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //jsonParse();
    //usersParse();
    usersAnswerParse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("mERHABA enes"),
      ),
      body: Column(
        children: [
          Text("Enes burda",style: TextStyle(color: Colors.red),),
          ElevatedButton(onPressed: (){}, child: Text("tıkla"))
        ],
      ),
    );
  }
}
