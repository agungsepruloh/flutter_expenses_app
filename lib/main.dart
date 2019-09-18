import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
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
          Card(
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Add Transaction'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        '\$${transaction.amount}', // string interpolation using dollar($) sign (for escape a value)
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          transaction.title,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMEd().format(transaction.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
