import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CarFormScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Car'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Model'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter model';
                  }
                  return null;
                },
               
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Transmission Mode'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter transmission mode';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Year'),
                keyboardType: TextInputType.number,
                
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child:
                       Icon(Icons.add_a_photo, size: 50, color: Colors.grey)
                      
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
