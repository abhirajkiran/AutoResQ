import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../constants/constants.dart';

class ServiceProviderMap extends StatefulWidget {
  
  const ServiceProviderMap({super.key, required this.latlong});
  final List latlong;
  @override
  State<ServiceProviderMap> createState() => _ServiceProviderMapState();
}

class _ServiceProviderMapState extends State<ServiceProviderMap> {

   //var destination=this.destination;

/*   static const LatLng sourcelocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055); */
  /* static const LatLng sourcelocation=LatLng(, longitude) */


  /* List<LatLng> PolylineCoordinates=[];   */

  

 /*  @override
  void initState() {
    
    getPolyPoints();
    super.initState();
  } */
 //final GlobalKey<ReusableCardState> reusableCardKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
      LatLng sourcelocation = LatLng(37.33500926, -122.03272188);
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
