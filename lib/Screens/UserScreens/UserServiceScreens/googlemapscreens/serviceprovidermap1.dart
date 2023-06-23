/* import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../constants/constants.dart';

class ServiceProviderMap1 extends StatefulWidget {
  
  const ServiceProviderMap1({super.key, required this.latlong});
  final List latlong;

   getlocation()async{
     Position position1 = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position1);
     LatLng sourcelocation1=LatLng(position1.latitude, position1.longitude);
     return sourcelocation1;
  }

 
 
  @override
  State<ServiceProviderMap1> createState() => _ServiceProviderMap1State();
}

class _ServiceProviderMap1State extends State<ServiceProviderMap1> {



  @override
  Widget build(BuildContext context) {

   
    //  LatLng sourcelocation = LatLng(37.33500926, -122.03272188);
   LatLng sourcelocation= LatLng(po., longitude);
    LatLng destination= LatLng( double.parse(widget.latlong[0]), double.parse(widget.latlong[1])); 

   
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Company Name",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: sourcelocation, zoom: 14.5),
           /*  polylines:{
              Polyline(polylineId: PolylineId("route"),
              points: PolylineCoordinates,
              color: Colors.green,
              width: 6
              ),
               
            } , */
        markers: {
          Marker(markerId: MarkerId("source"), position: sourcelocation),
          Marker(markerId: MarkerId("destination"),position: destination)
        },
      ),



    );
  }



 /*  void getPolyPoints()async{
     PolylinePoints polylinePoints=PolylinePoints();

     PolylineResult result=await polylinePoints.getRouteBetweenCoordinates(
      API_KEY,
       PointLatLng(widget.latlong[0], sourcelocation.longitude),
        PointLatLng(destination.latitude, destination.longitude ));

        if(result.points.isNotEmpty){
          result.points.forEach((PointLatLng point)  { 
            PolylineCoordinates.add(LatLng(point.latitude, point.longitude));  
          });
          setState(() {
            
          });

        }
        
  } */



 
}
 */