import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceProviderMap extends StatefulWidget {
  const ServiceProviderMap({super.key, required this.latlong});
    final List latlong;


  @override
  State<ServiceProviderMap> createState() => _ServiceProviderMap();
}

class _ServiceProviderMap extends State<ServiceProviderMap> {
  
  late GoogleMapController mapController;

   LatLng ? _currentPosition;
  
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

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
     
     // _isLoading = false;
    });
  }
  
  double calculateDistance(lat1, lon1, lat2, lon2){
  var p = 0.017453292519943295;
  var a = 0.5 - cos((lat2 - lat1) * p)/2 + 
        cos(lat1 * p) * cos(lat2 * p) * 
        (1 - cos((lon2 - lon1) * p))/2;
  return 12742 * asin(sqrt(a));
}
  

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  
  }

  

  @override
 Widget build(BuildContext context) {
    LatLng destination= LatLng( double.parse(widget.latlong[0]), double.parse(widget.latlong[1])); 
      double distance=calculateDistance(_currentPosition!.latitude, _currentPosition!.longitude, destination.latitude, destination.longitude);
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body:/*  _isLoading ? 
      Center(child:CircularProgressIndicator()) :  */
      Stack(
        children: [
          GoogleMap(
        
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target:_currentPosition!,
          zoom: 16.0,
        ),
          markers: {
          Marker(markerId: MarkerId("source"), position: _currentPosition!,),
          Marker(markerId: MarkerId("destination"),position:destination)
          
        },
        
        polylines: {
          
          Polyline(polylineId: PolylineId("route"),
          points: [_currentPosition!,destination],
          color: Colors.green,
          width: 6
         
          )
          
        },
       
      ),
       Positioned(
                    bottom: 200,
                    left: 50,
                    child: Container( 
                     child: Card( 
                         child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text("Total Distance: " + distance.toStringAsFixed(2) + " KM",
                                         style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold))
                         ),
                     )
                    )
                 )
        ],
      )
    );
  }
}