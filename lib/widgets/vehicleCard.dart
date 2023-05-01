import 'package:flutter/material.dart';

class VehicleCardWidget extends StatelessWidget {
  final String make;
  final String model;
  final String year;
  final String image;
 

  VehicleCardWidget({
    required this.make,
    required this.model,
    required this.year,
    required this.image,
   
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.grey.shade300,
      shadowColor: Colors.grey,
      elevation: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.network(
                image,
                height:160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      make,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      model,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      year,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}