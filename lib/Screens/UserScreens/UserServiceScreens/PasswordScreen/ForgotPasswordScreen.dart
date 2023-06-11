import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  

final formKey = GlobalKey<FormState>();
final emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reset Password", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            onPressed: () {
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
        body: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "We will sent an email to reset your password !",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
              controller: emailcontroller,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.done,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email) =>/*  */
                  email != null && !EmailValidator.validate(email)
                      ? "Enter a valid Email"
                      : null,
            ),
              SizedBox(height: 30),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ]))));
  }
}
