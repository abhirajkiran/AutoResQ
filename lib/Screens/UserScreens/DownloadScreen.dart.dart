import 'package:flutter/material.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/NavBar.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DOWNLOAD OUR APP", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/AUTORESQ QR.png",
                        height: 300, width: 300),
                    SizedBox(height: 25),
                    Text(
                      "Scan the QR to download the app",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            )));
  }
}
