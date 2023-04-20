import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
              ],
            ),
            Column(
              children: [Text('Hello'), Text('How can we help?')],
            ),
            SizedBox(height: 80),
            Container(
              height:100,
              width: 300,
              child:Image.asset(
                  'assets/images/add.png',
                  fit: BoxFit.fill,
                ) ,
            ),

            SizedBox(height: 50,),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:60),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.green,
                      ),
                      SizedBox(width:30,),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                 Padding(
                  padding: const EdgeInsets.only(left:60),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.green,
                      ),
                      SizedBox(width:30,),
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.green,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              label: 'My Vehicles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
