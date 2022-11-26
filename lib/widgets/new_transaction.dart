import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final nameController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  void submitData() {
    final enteredName = nameController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredName.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(
      enteredName,
      enteredAmount,
    );
  }

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
            onChanged: (_) => submitData,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountController,
            keyboardType: TextInputType.number,
            onChanged: (_) => submitData,
          ),
          ElevatedButton(
            onPressed: (submitData),
            child: Text("Add Transaction"),
          )
        ]),
      ),
    );
  }
}
