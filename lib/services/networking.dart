import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  Future getData() async {
    http.Response resp = await http.get(this.url);
    if (resp.statusCode == 200) {
      var data = jsonDecode(resp.body);
      return data;
    } else {
      print(resp.statusCode);
    }
  }
}
