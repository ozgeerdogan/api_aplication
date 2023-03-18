import 'package:flutter/material.dart';
import 'package:flutter_application_5/items/item.dart';
import 'package:flutter_application_5/items/items_data.dart';
import 'package:flutter_application_5/widgets/item_card.dart';
import 'package:provider/provider.dart';

import 'item_adder.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color.fromARGB(255, 171, 148, 123),
      appBar: AppBar(
        title: const Text(
          "Get It Done",
          style: TextStyle(color: Colors.brown),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 171, 148, 123),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: Provider.of<ItemData>(context).items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCard(
                        title:
                            Provider.of<ItemData>(context).items[index].title,
                        isDone:
                            Provider.of<ItemData>(context).items[index].isDone,
                        deleteItem: (_){
                          Provider.of<ItemData>(context, listen: false).deleteItem(index);
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: null,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(isScrollControlled: true,
              context: context, builder: ((context) =>ItemAdder()));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.brown,
        ),
      ),
    );
  }

  
}


