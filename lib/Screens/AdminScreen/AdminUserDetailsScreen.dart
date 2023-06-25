import 'package:flutter/material.dart';
import 'package:resp/Screens/AdminScreen/AdminDashBoard.dart';
import 'package:resp/Screens/AdminScreen/AdminNavBarScreen.dart';

class AdminUserDetailsScreen extends StatefulWidget {
  const AdminUserDetailsScreen({super.key});

  @override
  State<AdminUserDetailsScreen> createState() => _AdminUserDetailsScreenState();
}

class _AdminUserDetailsScreenState extends State<AdminUserDetailsScreen> {
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin User Details", style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AdminNavBar()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
     ),
     body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ExpansionTile(
          title: Text('DETAIL 1'),
          subtitle: Text('ORDER ID:#000001'),
          children: <Widget>[
            ListTile(title: const Text(
                  'INTERMEDIATORY NAME',
                  textScaleFactor: 1.0,
                ),
                 trailing:  ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_card_sharp),
                  label: const Text(
                      "DETAILS"
                  )
                ),
                subtitle:  Text('USER NAME'),
                selected: true,
                onTap: () {
                  setState(() {});
                },
              ),
          ],
        ),       
        
              
      

          )
          ) ])); 
  }
}