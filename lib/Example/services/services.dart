import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:json_data_parse/Example/models/model.dart';
getHttp() async {
  try {
    var response = await Dio().get('https://random-data-api.com/api/v2/users?size=2&is_xml=true');
    //var jsonData=json.decode(response);
    Map<String, dynamic> jsonData=response.data;
    var data=GetData.fromJson(jsonData);
    print(data.address);
  } catch (e) {
    print(e);
  }
}