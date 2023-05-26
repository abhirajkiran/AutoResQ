import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/NavBar.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/SettingsScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/NotificationScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_FuelScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_Tow.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/user_TyreScreen.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/garageScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/loginScreen.dart';

import '../UserServiceScreens/user_MechanicScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeTopButtonWidget(),
            HomeTopTextWIdget(),
            SizedBox(height: 30),
            HomeAddWidget(),
            SizedBox(
              height: 10,
            ),
            HomeServicesMatrixWidget()
          ],
        ),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}

class HomeServicesMatrixWidget extends StatelessWidget {
  const HomeServicesMatrixWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 35),
          child: FirstRowWidget(),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 35),
          child: SecondRowWidget(),
        )
      ],
    );
  }
}

class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
             Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserTowScreen()),
                      );
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.green),
            height: 130,
            width: 130,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child:
                      Center(child: Image.asset('assets/images/Tow Truck.png')),
                ),
                const SizedBox(
                  height: 0,
                ),
                const Text(
                  'TOW SERVICE',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        InkWell(
          onTap: () {
             Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserFuelScreen()),
                      );
          },
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.green),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                      child: Image.asset('assets/images/Gas Station.png')),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'GAS',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
             Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserMechanicsScreen()),
                      );
          },
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.green),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child:
                      Center(child: Image.asset('assets/images/MECHANIC.png')),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'MECHANIC',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        InkWell(
          onTap: () {
             Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserTyreScreen()),
                      );
          },
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.green),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(child: Image.asset('assets/images/TYRE.png')),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'TYRE',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HomeAddWidget extends StatelessWidget {
  const HomeAddWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: 330,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image.asset(
            'assets/images/add.png',
            fit: BoxFit.fill,
          ),
        ));
  }
}

class HomeTopTextWIdget extends StatelessWidget {
  const HomeTopTextWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 220, top: 20),
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'How can we help?',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
        )
      ],
    );
  }
}

class HomeTopButtonWidget extends StatelessWidget {
  const HomeTopButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBar()),
                );
              },
              icon: Icon(Icons.menu, size: 35)),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              icon: Icon(
                Icons.notifications,
                size: 35,
              )),
        )
      ],
    );
  }
}

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({
    super.key,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentSelectedIndex =0;
  final _pages = [HomeScreen(), GarageScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green,
      
      currentIndex: _currentSelectedIndex,
      onTap: (index) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _pages[_currentSelectedIndex]),
        );
        setState(() {
          _currentSelectedIndex = index;
        });
      },
      items:  [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
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
    );
  }
}
