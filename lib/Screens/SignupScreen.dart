import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignupScreen extends StatefulWidget {
 const SignupScreen({Key? key}) :super(key:key);

@override
_SignupScreenState createState() => _SignupScreenState();
}


@override
_SignupScreenState createState() => _SignupScreenState();

  

class _SignupScreenState extends State<SignupScreen>{

bool _isSecurePassword=true;

final _FirstNamecontroller = TextEditingController();
  final _LastNamecontroller = TextEditingController();
  final _Countrycodecontroller = TextEditingController();
  final _PhoneNumbercontroller = TextEditingController();
  final _Passwordcontroller = TextEditingController();

final GlobalKey<FormState> formkey =GlobalKey<FormState>();
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
            padding: const EdgeInsets.only(top:100,left: 35),
            child: Text('Sign up',
            style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:160,left:40),
            child:Text('Create an account,Its free',
          style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey),
          ),
          ),
          Container(
          child: Form(
            key: formkey,
            child: Padding(
              padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25,
              right: 35,
              left: 35),
              child: Column(
                children: [
                  TextFormField(
                    controller: _FirstNamecontroller,
                    decoration: InputDecoration(
                      fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,                  
                      hintText: 'First Name',
                       border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15) )
                  ),
                  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your First Name';
    }
    return null;
  },
                  ),
                  SizedBox(height:20 ,),
                  TextField(
                    controller:_LastNamecontroller ,
                    decoration: InputDecoration(
                      fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,
                      hintText: 'Last Name',
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15) )
                    ),
                  ),
                   SizedBox(height:45 ,),
                 /*  TextField(
          
                  ), */
                  /* Scaffold(
                  child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 05),
                    decoration: BoxDecoration(
                      color:Colors.white,
                    )
                  )
          
                  ) */
                  /* Container(
                    decoration: BoxDecoration(
                      /* border: Border.all(width: 1,color: Colors.white),
                      borderRadius: BorderRadius.circular(10) */ */
                 /*      
                     ),
                 child: */Row(
                  children: [
                    SizedBox(
                      width: 60,
                      child:TextField(
                        onChanged:(value){
                          if(value.length==3){
                            FocusScope.of(context).nextFocus();
                          }
                        } ,
                         inputFormatters:[FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),
                          ],
                          keyboardType: TextInputType.number,                     
                         /*  keyboardType: TextInputType.phone, */                  
                        controller:_Countrycodecontroller,
                          decoration: InputDecoration(
                            fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10) )
                        ),
                      ),
                      ), 
                     /*  SizedBox(width: 5,),
                      Text("|",style: TextStyle(fontSize:50,color: Colors.black )), */
                      SizedBox(width: 5,),
                      Expanded(
                        child: TextField(
                          onChanged:(value){
                          if(value.length==10){
                            FocusScope.of(context).nextFocus();
                          }
                        } ,
                          inputFormatters:[FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10),
                          ],                    
                          keyboardType: TextInputType.number,
                          controller: _PhoneNumbercontroller,
                          decoration: InputDecoration(
                            fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,
                      
                          
                          hintText: "Phone Number",border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10) ) ),
                        ),
                      ),
                  ],
                 ),
                 /*  ), */
          
          
          
                  /* TextField(
                    controller: _PhoneNumbercontroller,
                        decoration: InputDecoration(
                          fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15) )  
                        ), */
                 /*  ), */
                  SizedBox(height:45 ,),
                  TextField(
                    controller:_Passwordcontroller ,
                      obscureText: _isSecurePassword ,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(221, 255, 253, 253),
                      filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15) ),
                        suffixIcon: togglePassword(),
                       ),
                   ),
                  SizedBox(height:20 ,),
                  //signupbutton
                  ElevatedButton(onPressed: (){
                    var _FirstName = _FirstNamecontroller.text;
                    var _LastName = _LastNamecontroller.text;
                    var _Countrycode = _Countrycodecontroller.text;
                    var _PhoneNumber = _PhoneNumbercontroller.text;
                    var _Password = _Passwordcontroller.text;
          
                    print("FirstName:"+ _FirstName);
                    print("LastName:"+ _LastName);
                    print("CountryCode:+"+ _Countrycode);
                    print("PhoneNumber:"+ _PhoneNumber);
                    print("Password:"+ _Password);
                  },
                style:ElevatedButton.styleFrom(foregroundColor:Colors.white,
                          backgroundColor: Colors.green,minimumSize: Size(90, 40),),
                 child: const Text('Signup',style: TextStyle(fontSize:20 ),),
                ),
                SizedBox(height:20 ,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[
                Text("Already have an account?",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                 ),
                 ),
                SizedBox(width:10 ,),
                
                Text("Login",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.green,
                ),
                )
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
  Widget togglePassword(){
    return IconButton(onPressed: (){
       setState((){
  _isSecurePassword = !_isSecurePassword;
        }
      );       
    }, icon: _isSecurePassword ? Icon( Icons.visibility) : Icon( Icons.visibility_off),
    color: Colors.grey,);
  }  
}






