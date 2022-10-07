import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MyProvider with ChangeNotifier {

  Map _result = {};

  Map get result => _result;

  void setResult(Map queryResult) {
    _result = queryResult;
    notifyListeners();
  }

  Future<void> search(params) async {
    Uri url = Uri.parse('https://www.googleapis.com/books/v1/volumes?q='+params);

    var response = await http.get(url);
    var parsed = json.decode(response.body);
    // print(parsed);
    setResult(parsed);
    print(_result);
    // setResult(parsed);
  }

}