import 'menu.dart';
import 'package:flutter/material.dart';
class Thursday extends StatefulWidget {
  const Thursday({super.key});

  @override
  State<Thursday> createState() => _ThursdayState();
}

class _ThursdayState extends State<Thursday> {
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
        backgroundColor: rainbow[3],
        title: Text(weekdays[3]),
      ),);
  }
}
