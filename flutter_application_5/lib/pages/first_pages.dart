import 'package:flutter/material.dart';
import 'package:flutter_application_5/model/user_model.dart';
import 'package:flutter_application_5/services/user_services.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // ignore: prefer_final_fields
  UserService _service = UserService();
  List<UsersModelData?> users = [];

  @override
  void initState() {
    super.initState();
    _service.fetchUsers().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          users = value.data!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text("USERS"),
        backgroundColor: const Color.fromARGB(255, 171, 148, 123),
      ),
      backgroundColor: const Color.fromARGB(255, 171, 148, 123),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            // ignore: unnecessary_string_interpolations
            title:
                Text(users[index]!.firstName! + users[index]!.lastName!),
            subtitle: Text(users[index]!.email!),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(users[index]!.avatar!),
            ),
          );
        },
      ),
    );
  }
}
