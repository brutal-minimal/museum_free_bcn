import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Monday extends StatefulWidget {
  const Monday({super.key});

  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const Text(style: TextStyle(letterSpacing: 3.0),"I suppose that i want to display some text from the database"),
            const Text("Like Museu d`Història de Barcelona (MUHBA)"),
            const Text("15-20"),
            const Text("Plaza del Rey, s/n, 08002 ,M Jaume I "),
            Image.asset(scale: 5.0,"images/pinguilove.png"),
            Container(
              width: 300,
              height: 200,
              child: FlutterMap(
                options: MapOptions(
                center:  LatLng(51.509364, -0.128928),
                zoom: 9.2),
                nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
              source: 'OpenStreetMap contributors',
              onSourceTapped: null,
                    ),
                ],
                children: [
                    TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
                    ),
                ],),
            )
          ],
        ),),
      appBar: AppBar(
        title:  Text(weekdays[0]),
      ),
      );
  }
}