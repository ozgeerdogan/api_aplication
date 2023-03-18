import 'package:flutter/material.dart';
import 'package:flutter_application_5/items/items_data.dart';
import 'package:provider/provider.dart';

class ItemAdder extends StatelessWidget {
  ItemAdder({super.key});
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (input) {
                  // ignore: avoid_print
                  print(textController.text);
                },
                controller: textController,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Add Item",
                  hintText: "...",
                ),
                autofocus: false,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<ItemData>(context, listen: false)
                      .addItem(textController.text);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 171, 148, 123)),
                child: const Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
