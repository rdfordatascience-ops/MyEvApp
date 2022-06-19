import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChargeForm extends StatelessWidget {

  static const String routeName = '/chargeFormScreen';

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final titleInput = titleController.text;
    final amountInput = double.parse((amountController.text));
    if (titleInput.isEmpty || amountInput <= 0) {
      return;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: submitData,
              child: Icon(Icons.check_rounded),
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

}