/* import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);
late String latlong3;

class ServiceProviderMap extends StatefulWidget {
  String latlong1;

  ServiceProviderMap({
    super.key,
    required this.latlong1,
  });

  @override
  State<ServiceProviderMap> createState() => _ServiceProviderMapState();
}

class _ServiceProviderMapState extends State<ServiceProviderMap> {
  late GoogleMapController mapController;
  Map<String, Marker> _markers = {};
  List<String> latlong = "-34.8799074,174.7565664".split(",");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: currentLocation, zoom: 14),
        onMapCreated: (controller) {
           
          int lat1 = int.parse(latlong[1]);
          mapController = controller;
          addMarker('test', currentLocation);
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  /* addMarker(String id, LatLng location) {
    String lat1 = (latlong[1]);
    String long1 = (latlong[1]);
    double lan = double.parse(lat1);
    double long = double.parse(long1);

    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: InfoWindow(title: 'Title', snippet: 'description'));
    _markers[id] = marker;
    setState(() {});
  } */
}
 */