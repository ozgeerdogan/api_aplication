import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final bool? isDone;
  final Function(bool?)? toggleStatus;
  void Function(DismissDirection)? deleteItem;

  ItemCard({required this.title,this.isDone,this.toggleStatus, this.deleteItem});

  @override
  Widget build(BuildContext context) {
    return Dismissible(onDismissed: deleteItem,
      key: Key(title),
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 171, 148, 123),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(title),
          
        ),
      ),
    );
  }
}
