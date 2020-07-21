import 'dart:convert';

import 'package:how_is_the_dollar/http/webclient.dart';
import 'package:how_is_the_dollar/models/dollar.dart';
import 'package:http/http.dart';

class DollarWebClient {

  Future<Dollar> findPrice() async {
    Response response = await client.get('$url/all/USD-BRL').timeout(Duration(seconds: 5));
    return Dollar.fromJson(jsonDecode(response.body));
  }
}