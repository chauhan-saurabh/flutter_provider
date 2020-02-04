import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/src/model/counter.dart';
import 'package:flutter_provider/src/view/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ChangeNotifierProvider(
        create: (_) => CounterModel(),
        lazy: true,
        child: CounterView(),
      ),
    );
  }
}
