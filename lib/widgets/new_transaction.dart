import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleVal = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountVal = val;
              // },
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Add Transaction'),
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
              },
              // onPressed: () {
              //   print(titleVal);
              //   print(amountVal);
              // },
            ),
          ],
        ),
      ),
    );
  }
}
