import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CounterModel with ChangeNotifier {
  int _counter = 0;
  var user = null;

  getCounter() => _counter;

  setCounter(int counter) => _counter = counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  userData() {
    user;
    notifyListeners();
  }

  Future<http.Response> fetchData() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      // return Post.fromJson(json.decode(response.body));
      print(response.body);
      user = json.decode(response.body);
      print(user["body"]);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
