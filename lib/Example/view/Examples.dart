import 'package:flutter/material.dart';

import '../services/services.dart';
class Examples extends StatefulWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {

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
