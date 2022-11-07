import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/model.dart';
import 'package:http/http.dart' as http;
class Examples extends StatefulWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  List<Users> parseUsersAnswer (String answer){
    print(UsersAnswer.fromJson(json.decode(answer)).success);
    print("---------------------");
    return UsersAnswer.fromJson(json.decode(answer)).usersList;
  }
  Future<List<Users>> allUsers() async {
    var url=Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php");
    var response = await http.get(url);
    return parseUsersAnswer(response.body);
  }

  Future<void> viewUser() async {
    var lists=await allUsers();
    for(var k in lists){
      print(k.userName);
      print(k.userId);
      print(k.userPhone);
      print("****");
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Flutter json parse Example"),
      ),
      body: Column(
        children: const[
          Text("Hello Json")
        ],
      ),
    );
  }
}
