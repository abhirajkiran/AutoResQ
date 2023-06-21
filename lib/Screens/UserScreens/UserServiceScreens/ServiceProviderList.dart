import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:resp/Screens/UserScreens/UserServiceScreens/serviceproviderhome.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceProviderScreen extends StatefulWidget {
  const ServiceProviderScreen({super.key});

  @override
  State<ServiceProviderScreen> createState() => _ServiceProviderScreenState();
}

class _ServiceProviderScreenState extends State<ServiceProviderScreen> {
  final CollectionReference intermediatoryusers =
      FirebaseFirestore.instance.collection('intermediatoryusers');

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
                    final String companyname=intermediatorysnap['companyname'];
                    final String service=intermediatorysnap['service'];
                    final int contactnumber=intermediatorysnap['contactnumber'];
                    final String location=intermediatorysnap['location'];
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
                            subtitle: Text(intermediatorysnap['service']),
                            trailing: SizedBox(
                              width: 120,
                              height: 25,
                              child: Row(
                                children: [
                                  ElevatedButton.icon(
                                      onPressed: () async {
                                        /*  directcall() async {
                                          await FlutterPhoneDirectCaller
                                              .callNumber('${intermediatorysnap[
                                                  'contactnumber']}');
                                        } */
                                        /* await launchUrl(dialnumber); */
                                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => interMediatoryProfile(companyname: companyname,contactnumber: contactnumber,service: service,location: location,)),
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


/* Stream<List<User>>readintermediateUsers() => FirebaseFirestore.instance.
collection('intermediatoryusers').snapshots().map((snapshot) => 
snapshot.docs.map((doc) => User.f  )
)    */

/* class intermediatoryusers{

  final String companyname;
  final int contactnumber;
  final String location;
  final String pincode;
  final String regnnumber;

  intermediatoryusers( this.companyname, this.contactnumber, this.location, this.pincode, this.regnnumber);
  static intermediatoryusers fromJson(Map<String,dynamic> json)=>  intermediatoryusers(
    companyname:json['companyname'],
    contactnumber:json['contactnumber'],
    location:json['location']
    pincode:json['picode'],
    regnnumber:json['regnnumber']
   );
   
} 
 */