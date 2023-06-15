import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation =LatLng(25.1193, 55.3773);


class ServiceProviderMap extends StatefulWidget {
  const ServiceProviderMap({super.key});

  @override
  State<ServiceProviderMap> createState() => _ServiceProviderMapState();
}

class _ServiceProviderMapState extends State<ServiceProviderMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(target:currentLocation)),
    );
  }
}