import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/splashScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_MechanicScreen.dart';
import 'package:pinput/pinput.dart';
import 'Screens/UserScreens/HomeScreens/NavBar.dart';
import 'Screens/UserScreens/HomeScreens/SignupScreen.dart';
import 'Screens/UserScreens/HomeScreens/homeScreen.dart';



Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
