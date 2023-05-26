import 'package:flutter/material.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_FuelScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/garageFormScreen.dart';

class UserFuelChooseScreen extends StatefulWidget {
  @override
  State<UserFuelChooseScreen> createState() => _UserFuelChooseScreenState();
}

class _UserFuelChooseScreenState extends State<UserFuelChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserFuelScreen()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width * 2.8 / 3,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('FIND FUEL'))),
    );
  }
}
