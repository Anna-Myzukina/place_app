import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;
  final LatLng _kMapCenter = const LatLng(49.195061, 16.606836);
void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Places on the Map'),
          backgroundColor: Colors.red,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          mapType: MapType.satellite,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: _kMapCenter,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
