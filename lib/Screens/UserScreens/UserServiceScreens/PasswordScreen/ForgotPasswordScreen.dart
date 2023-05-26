import 'package:flutter/material.dart';

import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Reset Password",style:TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );

  }
}