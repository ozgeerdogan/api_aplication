import 'package:flutter/cupertino.dart';
import 'package:flutter_application_5/items/item.dart';

class ItemData with ChangeNotifier{
  final List<Item> items=[
    Item(title: "Domates al."),
    Item(title: "Çöpleri at."),
    Item(title: "Not çıkar."),
    
  ];

  void toggleStatus(int index){
    items[index].toggleStatus();
    notifyListeners();
  }


  void addItem(String title){
    items.add(Item(title: title));
    notifyListeners();
  }

  void deleteItem(int index){
    items.removeAt(index);
    notifyListeners();
  }
}