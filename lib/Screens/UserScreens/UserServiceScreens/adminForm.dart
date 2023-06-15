import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class adminFormField extends StatefulWidget {
  const adminFormField({super.key});

  @override
  State<adminFormField> createState() => _adminFormFieldState();
}

class _adminFormFieldState extends State<adminFormField> {
  final _companynamecontroller = TextEditingController();
  final _regnumbercontroller = TextEditingController();
  final _locationcontroller = TextEditingController();
  final _servicecontroller = TextEditingController();
  final _contactnumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN SCREEN'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                  controller: _companynamecontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "COMPANY NAME",
                  )),
              SizedBox(height: 10),

              /////
              TextField(
                  controller: _regnumbercontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "REG NO",
                  )),
              SizedBox(height: 10),

              ////
              TextField(
                  controller: _locationcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "LOCATION",
                  )),
              SizedBox(height: 10),

              TextField(
                  controller: _servicecontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "SERVICE",
                  )),
              SizedBox(height: 10),

              TextField(
                  controller: _contactnumbercontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "CONTACT NUMBER",
                  )),
              SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                onPressed: () {
                  final companyname = _companynamecontroller.text;
                  final regnumber = _regnumbercontroller.text;
                  final location = _locationcontroller.text;
                  final service = _servicecontroller.text;
                  final contactnumber =
                      int.parse(_contactnumbercontroller.text);
                  final String id = uuid.v1();

                  createMechanic(
                      companyname: companyname,
                      regnumber: regnumber,
                      location: location,
                      service: service,
                      contactnumber: contactnumber,
                      id: id);
                  Navigator.of(context).pop();
                },
                child: const Text('ADD'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future createMechanic(
    {required String companyname,
    required String regnumber,
    required String location,
    required String service,
    required int contactnumber,
    required String id})
     async {
  final docMechanic =
      FirebaseFirestore.instance.collection('intermediatoryusers').doc(id);
  final json = {
    'companyname': companyname,
    'regnnumber': regnumber,
    'location': location,
    'service': service,
    'contactnumber': contactnumber
  };
  await docMechanic.set(json);
}
