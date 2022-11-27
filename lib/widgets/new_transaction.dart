import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final nameController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredName = nameController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredName.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addTx(
      enteredName,
      enteredAmount,
    );
    Navigator.of(context).pop();
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
