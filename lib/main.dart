import 'package:flutter/material.dart';

import 'package:resp/Screens/UserScreens/loginScreen.dart';
import 'package:resp/Screens/UserScreens/splashScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_MechanicScreen.dart';

import 'Screens/UserScreens/HomeScreens/NavBar.dart';
import 'Screens/UserScreens/SignupScreen.dart';
import 'Screens/UserScreens/HomeScreens/homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          color:  Colors.green,
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
