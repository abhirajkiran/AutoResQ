import 'package:flutter/material.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';
import 'package:resp/Screens/UserScreens/SettingsScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/NotificationScreen.dart';
import 'package:resp/Screens/UserScreens/loginScreen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  
  get currentAccountPicture => null;      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
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
          UserAccountsDrawerHeader(accountName:Text('Account Name') , 
          accountEmail:null,
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child:Image.asset(                
            'assets/images/User.png',
            width: 90,
            height: 90,
            fit:BoxFit.cover,        
          ),
             ),
            ),
            decoration: BoxDecoration(
              color: Colors.green ,
              image: DecorationImage(
                image:AssetImage(
                  'assets/images/must.jpg',
                  
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user_rounded),
            title: Text('Userprofile'),
            onTap: ()=>null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
          ),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,width: 20,
                height: 20,              
                child:Center(
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                )
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
            
          
                ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: ()=>null,
          ),
           Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
            ),
          ),         
        ],
       ),
       ),
    );
  }
}
/* } */