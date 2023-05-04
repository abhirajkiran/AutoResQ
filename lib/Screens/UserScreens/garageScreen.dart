import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/garageFormScreen.dart';
import 'package:resp/Screens/UserScreens/HomeScreens/homeScreen.dart';


import 'package:resp/Screens/UserScreens/loginScreen.dart';

import 'package:resp/widgets/vehicleCard.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('MY GARAGE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  VehicleCardWidget(
                      make: "TOYOTA",
                      model: "LAND CRUISER",
                      year: "2020",
                      image:
                          "https://eurostral.com/wp-content/uploads/2022/09/toyota-landcruiser-860x546.png"),
                  VehicleCardWidget(
                      make: "HONDA",
                      model: "CIVIC",
                      year: "2021",
                      image:
                          "https://di-uploads-development.dealerinspire.com/bommaritohonda/uploads/2021/03/2020-Honda-Civic-LX.png"),
                  VehicleCardWidget(
                      make: "FORD",
                      model: "RAPTOR",
                      year: "2019",
                      image:
                          "https://iqcarsgermany.azureedge.net/img/BrandNewCarThumb/1628435116292.282595-5953915_ford-f150-raptor-white-hd-png-download.png")
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarFormScreen()),
                  );
                },
                child: Text(
                  'ADD VEHICLE',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
