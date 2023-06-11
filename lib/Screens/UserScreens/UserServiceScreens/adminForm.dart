

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class adminFormField extends StatefulWidget {
  const adminFormField({super.key});

  @override
  State<adminFormField> createState() => _adminFormFieldState();
}

class _adminFormFieldState extends State<adminFormField> {
  final _companynamecontroller = TextEditingController();
  final _regnumbercontroller = TextEditingController();
  final _locationcontroller = TextEditingController();
  final _pincodecontroller = TextEditingController();
  final _contactnumbercontroller = TextEditingController();

  String dropdownvalue = 'Flat Bed';

  var items = [
    'Flat Bed',
    'Tyre',
    'Mechanical',
    'Gas'
  ];
  List<String> selectedItems = [];

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
                  controller: _pincodecontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "PINCODE",
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

              /* DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Select Items',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  ),
                  items: items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      //disable default onTap to avoid closing menu when selecting an item
                      enabled: false,
                      child: StatefulBuilder(
                        builder: (context, menuSetState) {
                          final _isSelected = selectedItems.contains(item);
                          return InkWell(
                            onTap: () {
                              _isSelected
                                  ? selectedItems.remove(item)
                                  : selectedItems.add(item);
                              //This rebuilds the StatefulWidget to update the button's text
                              setState(() {});
                              //This rebuilds the dropdownMenu Widget to update the check mark
                              menuSetState(() {});
                            },
                            child: Container(
                              height: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  _isSelected
                                      ? const Icon(Icons.check_box_outlined)
                                      : const Icon(
                                          Icons.check_box_outline_blank),
                                  const SizedBox(width: 16),
                                  Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }).toList(),
                  //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                  value: selectedItems.isEmpty ? null : selectedItems.last,
                  onChanged: (value) {},
                  selectedItemBuilder: (context) {
                    return items.map(
                      (item) {
                        return Container(
                          alignment: AlignmentDirectional.center,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            selectedItems.join(', '),
                            style: const TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 1,
                          ),
                        );
                      },
                    ).toList();
                  },
                  buttonStyleData: const ButtonStyleData(
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ), */

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                onPressed: (){
                  final companyname=_companynamecontroller.text;
                  final regnumber=_regnumbercontroller.text;
                  final location=_locationcontroller.text;
                  final pincode=_pincodecontroller.text;
                  final contactnumber=_contactnumbercontroller.text;
             
                createMechanic(companyname:companyname,regnumber:regnumber,location:location,pincode:pincode,contactnumber:contactnumber);
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

Future createMechanic({required String companyname,required String regnumber,required String location,required String pincode,required String contactnumber})async{
 final docMechanic=FirebaseFirestore.instance.collection('intermediatoryusers').doc('my-id');
  final json={
     'companyname':companyname,
     'regnnumber':regnumber,
     'location':location,
     'pincode':pincode,
     'contactnumber':contactnumber
  };
  await docMechanic.set(json);
}
  