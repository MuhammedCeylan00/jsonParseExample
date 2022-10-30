
import 'package:dio/dio.dart';
getHttp() async {
  try {
    var response = await Dio().get('https://random-data-api.com/api/v2/users?size=2&is_xml=true');
    print(response.data);
  } catch (e) {
    print(e);
  }
}