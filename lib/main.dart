import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 'ts1',
      title: 'New Shoes',
      amount: 56.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'ts2',
      title: 'New T-shirt',
      amount: 28.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.lightBlue,
              child: Text('Hello!'),
              elevation: 10,
            ),
          ),
          Column(children: transactions.map((transaction) {
            return Card(
              child: Text(transaction.title),
            );
          }).toList(),)
        ],
      ),
    );
  }
}
