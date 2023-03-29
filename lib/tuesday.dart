import 'package:flutter/material.dart';
import 'menu.dart';
class Tuesday extends StatefulWidget {
  const Tuesday({super.key});

  @override
  State<Tuesday> createState() => _TuesdayState();
}

class _TuesdayState extends State<Tuesday> {
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
            Image.asset(scale: 5.0,"images/pinguilove.png")
          ],
        ),),
      appBar: AppBar(
        backgroundColor: rainbow[1],
        title:  Text(weekdays[1]),
      ),);
  }
}