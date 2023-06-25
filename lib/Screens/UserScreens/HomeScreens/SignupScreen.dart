import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/Otp%20Screen/VerifyNumber.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

@override
_SignupScreenState createState() => _SignupScreenState();

class _SignupScreenState extends State<SignupScreen> {
  bool _isSecurePassword = true;

  final _FirstNamecontroller = TextEditingController();
  final _phonecontroller = TextEditingController();
  final _Countrycodecontroller = TextEditingController();
  final _PhoneNumbercontroller = TextEditingController();
  final _Passwordcontroller = TextEditingController();
  final _Emailcontroller = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 35),
            child: Text(
              'Sign up',
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 40),
            child: Text(
              'Create an account,Its free',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Form(
              key: formkey,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _FirstNamecontroller,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(221, 255, 253, 253),
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your First Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _phonecontroller,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(221, 255, 253, 253),
                          filled: true,
                          hintText: 'Phone',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      controller: _Emailcontroller,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(221, 255, 253, 253),
                          filled: true,
                          hintText: 'Email Address',
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      /* validator: (email)=>email !=null && !EmailValidator.validate(email),
                              ? 'Enter a valid Email'
                              : null, */
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _Passwordcontroller,
                      obscureText: _isSecurePassword,
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(221, 255, 253, 253),
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: togglePassword(),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //signupbutton
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          
                          FirebaseAuth.instance.createUserWithEmailAndPassword(email:_Emailcontroller.text, password: _Passwordcontroller.text) .then((value){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      }).onError((error, stackTrace) {print("Error ${error.toString()}");});
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          minimumSize: Size(90, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          'Verify',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.green,
                              ),
                            )),
                        
                      ],
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


/*   Future createUser(
    {required String username,
    
    required int userphonenumber,
    required String id}) async {
  final docUser =
      FirebaseFirestore.instance.collection('user').doc(id);
  final json = {
   'username':username,
   'userphonenumber':userphonenumber,
   'id':id
  };
  await docUser.set(json);
} */
}
