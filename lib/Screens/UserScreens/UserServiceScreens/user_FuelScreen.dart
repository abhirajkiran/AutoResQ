import 'package:flutter/material.dart';
import 'package:resp/Screens/UserScreens/garageFormScreen.dart';

class UserFuelScreen extends StatefulWidget {
  @override
  _UserFuelScreenState createState() => _UserFuelScreenState();
}

class _UserFuelScreenState extends State<UserFuelScreen> {
  String dropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuel Rescue'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'select your Vehicle from Garage',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width * 2.8 / 3,
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: null,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'LAND CRUISER',
                  'FORD RAPTOR',
                  'BMW M5',
                  'AUDI Q7'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            const Center(
              child: Text(
                'OR',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 20),
            Container(
                width: MediaQuery.of(context).size.width * 2.8 / 3,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarFormScreen()),
                      );
                    },
                    child: Text('Enter the vehicle details manually'))),

            SizedBox(
              height: 20,
            ),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 2.3 / 3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Find Fuel Rescue Providers Near Me'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
