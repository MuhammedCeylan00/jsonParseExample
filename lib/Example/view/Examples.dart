import 'package:flutter/material.dart';
import 'package:json_data_parse/Example/services/services.dart';
class Examples extends StatefulWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttp();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
