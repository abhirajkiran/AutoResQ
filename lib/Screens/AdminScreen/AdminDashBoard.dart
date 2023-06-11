import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../UserScreens/UserServiceScreens/adminForm.dart';

class adminHomePage extends StatelessWidget {
  const adminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: Container(
          child: Column(
        children: [
          Text('Admin Dashboard'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const adminFormField()),
                );
              },
              child: Text('ADD PROVIDERS'))
        ],
      )),
    );
  }
}
