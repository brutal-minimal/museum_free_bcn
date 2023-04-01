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
      backgroundColor: Color.fromARGB(0, 155, 84, 55),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Stack(
              children: [
                Positioned(
                  right: 30,
                  child: Image.asset(
                    excludeFromSemantics: true, 
                    height: 90,
                    scale: 1,
                    alignment: Alignment.topRight, "images/bear_stroke.png"),
                ),
                Card(
                  margin: const EdgeInsets.only(top: 55),
                  color: rainbow[0],
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black87, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: [
                      Image.asset("images/muhba.jpeg"),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(style: mytextStyle ,"Museu d`Història de Barcelona (MUHBA)"),
                      ),]
                  ) 
                ),
                ]),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    border: Border.all(
                      color: Colors.black,
                      width: 1, 
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(style: mytextStyle,"15-20, Plaza del Rey, s/n, 08002 ,M Jaume I ")
                ),
            
                
                //
                //here below i do a map
                //
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(32),
                  width: 300,
                  height: 300,
                  child: FlutterMap(
                    options: MapOptions(
                      screenSize: const Size(300, 300),
                    center:  LatLng(41.384309876021916, 2.177349582859912),
                    zoom: 12.0),
                    nonRotatedChildren: [
                        AttributionWidget.defaultWidget(
                  source: 'OpenStreetMap contributors',
                  onSourceTapped: null,
                        ),
                    ],
                    children: [
                      MarkerLayer(markers: [
                        Marker(
                          point: LatLng(41.384309876021916, 2.177349582859912), 
                          width: 80,
                          height: 80,
                          builder: (context) => const Icon(Icons.location_pin),)
                      ],
                      ),
                      TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                        ),
                    ],),
                )
              ],
            
          
        ),),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: rainbow[0],
        title:  Text(style: mytextStyle ,weekdays[0]),
      ),
      );
  }
}