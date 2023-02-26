import 'package:flutter/material.dart';
import 'package:zego_kopianan/call_page.dart';
import 'package:zego_kopianan/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String callId = 'thisIsCallIdOrJustRandomIt';

  static List<UserModel> users = [
    UserModel(
      name: "Anan Alfred",
      userName: "kopianan",
      userId: '111111',
    ),
    UserModel(
      name: "Carlos Hutajulu",
      userName: "carloshutajulu",
      userId: '222222',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("USER LIST TO USE"),
      ),
      body: Column(
          children: users
              .map((e) => Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                CallPage(callId: callId, user: e)));
                      },
                      title: Text(
                        e.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Username : ${e.userName}'),
                      trailing: Text('ID : ${e.userId}'),
                    ),
                  ))
              .toList()),
    );
  }
}
