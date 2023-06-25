import 'package:flutter/material.dart';
import 'package:resp/Screens/AdminScreen/AdminDashBoard.dart';
import 'package:resp/Screens/AdminScreen/AdminNavBarScreen.dart';

class AdminIntermediatoryDetailsScreen extends StatefulWidget {
  const AdminIntermediatoryDetailsScreen({super.key});

  @override
  State<AdminIntermediatoryDetailsScreen> createState() => _AdminIntermediatoryDetailsScreen();
}

class _AdminIntermediatoryDetailsScreen extends State<AdminIntermediatoryDetailsScreen> {
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Intermediatory Details", style: TextStyle(fontSize: 22)),
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
          title: Text('COMPANY NAME'),
          subtitle: Text('SHOP ID:#000001'),
          children: <Widget>[
            ListTile(title: const Text(
                  'INTERMEDIATORY NAME',
                  textScaleFactor: 1.0,
                ),
                 trailing:  ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_card_sharp),
                  label: const Text(
                      " MORE DETAILS"
                  )
                ),
                subtitle:  Text('SERVICES PROVIDED'),
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