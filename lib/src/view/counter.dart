import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/src/model/counter.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Text(
          'Counter Value is: ${counterModel.user["body"]}',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterModel.incrementCounter(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () => counterModel.fetchData(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
