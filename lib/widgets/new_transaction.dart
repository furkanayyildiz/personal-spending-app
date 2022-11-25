import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final nameController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Name"),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountController,
          ),
          ElevatedButton(
            onPressed: (() {
              addTx(nameController.text, double.parse(amountController.text));
            }),
            child: Text("Add Transaction"),
          )
        ]),
      ),
    );
  }
}
