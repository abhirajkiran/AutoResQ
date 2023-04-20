import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
                //color: Colors.green,
                child: Image.asset(
                  'assets/images/breakdown1.jpg',
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Get Started"),
             style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize:25,
                fontWeight: FontWeight.bold)),
            )
            ,
            SizedBox(height:35),
            Text('Auto ResQ v1.0',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
//Image.asset('android/assets/images/breakdown1.jpg',height:650,width:)