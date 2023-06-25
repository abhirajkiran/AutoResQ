import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/SignupScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/PasswordScreen/ForgotPasswordScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/ServiceProviderList.dart';
import 'package:resp/services/firebase_services.dart';


import 'intermediatoryDashboard.dart';



class intermediatoryLoginScreen extends StatefulWidget {
  const intermediatoryLoginScreen({super.key});

  @override
  State<intermediatoryLoginScreen> createState() => _intermediatoryLoginScreenState();
}

class _intermediatoryLoginScreenState extends State<intermediatoryLoginScreen> {
  bool _isSecurePassword = true;
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  void validateEmail() {
    final bool isValid = EmailValidator.validate(_emailcontroller.text.trim());
    if (isValid) {
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please Enter a Valid Email and Password")));
    }
  }

  final formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*  child:Form(
          key: formKey, */
          Image.asset(
            'assets/images/LoginBackground.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            opacity: const AlwaysStoppedAnimation(.8),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 130, left: 30),
            child: Text(
              'Hi!!!!!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 180),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey.withOpacity(.4),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 30),
                      child: TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Email",
                            fillColor: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^ [\W-\.]+@([\W-]+\.)+[\w-]{2,4}')
                                  .hasMatch(value)) {
                            return "Enter Email id";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 15),
                      child: TextField(
                        obscureText: _isSecurePassword,
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          hintText: "Password",
                          fillColor: Colors.white,
                          suffixIcon: togglePassword(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: ElevatedButton(
                        onPressed: () {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _emailcontroller.text,
                                  password: _passwordcontroller.text)
                              .then((value) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const intermediatoryHomePage()),
                            );
                          });

                          /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const intermediatoryHomePage()),
                            ); */
                          {
                            validateEmail();
                          }
                          /* {
                            if(formKey.currentState!.validate()){
                              final SnackBar = SnackBar(content: Text("Please wait"));
                              _scaffoldkey.currentState!.showSnackBar(SnackBar);
                            }                           
                          }         */
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          minimumSize: Size(350, 58),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    
                    
                    
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
