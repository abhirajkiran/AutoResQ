import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/SignupScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecurePassword = true;
  final _phoneNumbercontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                      child: TextField(
                        controller: _phoneNumbercontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                ),
                            hintText: "Phone number",
                            fillColor: Colors.white),
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
                      height: 14,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
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
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: TextButton(
                                child: Text(
                                  'Recover Password',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {}),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Container(
                        height: 59,
                        width: 350,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset(
                                  'assets/images/google.png',
                                  height: 30,
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 83, 76, 76),
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 60),
                          Text(
                            "Don't have an account yet?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreen()),
                                );
                              },
                              child: Text('Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:18,
                                color: Colors.green,
                              ),
                              ),
                              ),
                        ],
                      ),
                    )
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
