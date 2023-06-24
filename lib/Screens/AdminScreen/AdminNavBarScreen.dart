import 'package:flutter/material.dart';
import 'package:resp/Screens/AdminScreen/AdminDashBoard.dart';
import 'package:resp/Screens/AdminScreen/adminLogin.dart';
import 'package:resp/services/firebase_services.dart';

class AdminNavBar extends StatelessWidget {
   AdminNavBar({super.key});

  get currentAccountPicture => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminHomePage()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('ADMIN'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/admin.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/carhd.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user_rounded),
              title: Text('User Details'),
              onTap: () async {                  
                 /*  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminUserDetails()),
                  ); */
                } ,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Admin Intermediatory Details'),
              onTap: () async {                 
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminIntermediatoryDetails()),
                  ); */
                }
            ),
            Divider(),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () async {
                  await FirebaseServices().signOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminLoginScreen()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
