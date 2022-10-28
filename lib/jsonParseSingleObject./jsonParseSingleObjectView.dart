import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_data_parse/jsonParseSingleObject./Message.dart';
class JsonParseStringObjectView extends StatefulWidget {
  const JsonParseStringObjectView({Key? key}) : super(key: key);

  @override
  State<JsonParseStringObjectView> createState() => _JsonParseStringObjectViewState();
}

class _JsonParseStringObjectViewState extends State<JsonParseStringObjectView> {
  void jsonParse(){
    String data='{"message":{"message_cod":1,"message_content":"I content data"}}';
    var jsonData=json.decode(data);
    var jsonObject=jsonData["message"];
    Message message=Message.fromJson(jsonObject);
    print("Message id: ${message.message_cod}");
    print("Message content: ${message.message_content}");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jsonParse();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
