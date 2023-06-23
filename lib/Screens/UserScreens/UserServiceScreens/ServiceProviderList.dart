import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:resp/Screens/UserScreens/UserServiceScreens/serviceproviderhome.dart';

class ServiceProviderScreen extends StatefulWidget {
  const ServiceProviderScreen({super.key});

  @override
  State<ServiceProviderScreen> createState() => _ServiceProviderScreenState();
}

class _ServiceProviderScreenState extends State<ServiceProviderScreen> {
  final CollectionReference intermediatoryusers =
      FirebaseFirestore.instance.collection('intermediatoryusers');
   LatLng ?_currentPosition;

  getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double long = position.longitude;

    LatLng sourcelocation = LatLng(lat, long);

    setState(() {
      _currentPosition = sourcelocation;
     
    });
  }
  
  double calculateDistance(lat1, lon1, lat2, lon2){
  var p = 0.017453292519943295;
  var a = 0.5 - cos((lat2 - lat1) * p)/2 + 
        cos(lat1 * p) * cos(lat2 * p) * 
        (1 - cos((lon2 - lon1) * p))/2;
  return 12742 * asin(sqrt(a));
}

   @override
  void initState() {
    super.initState();
    getLocation();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Provider", style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: StreamBuilder(
          stream: intermediatoryusers.snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot intermediatorysnap =
                        snapshot.data.docs[index];
                    final String companyname =
                        intermediatorysnap['companyname'];
                    final String service = intermediatorysnap['service'];
                    final int contactnumber =
                        intermediatorysnap['contactnumber'];
                    final List location = intermediatorysnap['location'];
                    //LatLng destination=LatLng(location[0],location[1]);
                 double distance1=calculateDistance(_currentPosition!.latitude, _currentPosition!.longitude, double.parse(location[0]), double.parse(location[1]));
                   
                    Uri dialnumber = Uri(
                        scheme: 'tel',
                        path: '${intermediatorysnap['contactnumber']}');
                    return Container(
                      child: ListView(
                        itemExtent: 100.0,
                        reverse: true,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                                child: Icon(Icons.person),
                                backgroundColor: Colors.white),
                            title: Text(intermediatorysnap['companyname']),
                            subtitle: Text("Total Distance: " + distance1.toStringAsFixed(2) + " KM",
                                         style: TextStyle(fontSize: 12, fontWeight:FontWeight.bold)),
                            trailing: SizedBox(
                              width: 120,
                              height: 25,
                              child: Row(
                                children: [
                                  ElevatedButton.icon(
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  interMediatoryProfile(
                                                    companyname: companyname,
                                                    contactnumber:
                                                        contactnumber,
                                                    service: service,
                                                    location: location,
                                                  )),
                                        );
                                      },
                                      icon: Icon(Icons.safety_check_outlined),
                                      label: Text("Register")),
                                ],
                              ),
                            ),
                            onTap: () {},
                            tileColor: Colors.white,
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Container();
            }
          }),
    );
  }
}
