import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/ServiceProviderList.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/googlemapscreens/serviceprovidermap.dart';
import 'package:url_launcher/url_launcher.dart';

class interMediatoryProfile extends StatelessWidget {
  final String companyname;
  final String service;
  final int contactnumber;
  

   interMediatoryProfile({super.key, required this.companyname, required this.service, required this.contactnumber});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('COMPANY DETAILS'),),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
                const SizedBox(height: 16),
                 Text(
                  companyname,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  service,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 32),
                Center(
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      ElevatedButton(
                    onPressed: () async{
                       Uri dialnumber = Uri(
                        scheme: 'tel',
                        path: contactnumber.toString());
                        await launchUrl(dialnumber);
                      // Perform an action when the button is pressed
                      print('Button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Call now',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(width:20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ServiceProviderMap()),
                            );
                      // Perform an action when the button is pressed
                      print('Button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'View in map',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                    ],
                  ),
                )
                
              ],
            ),
          ),
        )
    );
  }
}







