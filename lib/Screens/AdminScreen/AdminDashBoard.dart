import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/AdminScreen/AdminNavBarScreen.dart';
import 'package:resp/Screens/AdminScreen/AdminLogin.dart';

import '../UserScreens/UserServiceScreens/adminForm.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Admin Dashboard'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminNavBar()),
              );
            },
            icon: Icon(Icons.menu, size: 35)),
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(height: 150,),
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
