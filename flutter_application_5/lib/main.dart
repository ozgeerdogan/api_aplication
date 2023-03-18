import 'package:flutter/material.dart';
import 'package:flutter_application_5/bottomnavbar.dart';
import 'package:flutter_application_5/items/items_data.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<ItemData>(
    create: (BuildContext context) => ItemData(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: BottomNavBar()),
    );
  }
}
