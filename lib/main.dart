import 'package:flutter/material.dart';
import 'package:museum_free_bcn/friday.dart';
import 'package:museum_free_bcn/info.dart';
import 'package:museum_free_bcn/menu.dart';
import 'package:museum_free_bcn/monday.dart';
import 'package:museum_free_bcn/saturday.dart';
import 'package:museum_free_bcn/sunday.dart';
import 'package:museum_free_bcn/thursday.dart';
import 'package:museum_free_bcn/tuesday.dart';
import 'package:museum_free_bcn/wednesday.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context) => const MainApp(),
      "/menu":(context) => const WeekMenu(),
      "/info":(context) => const Info(),
      "/monday":(context) => const Monday(),
      "/tuesday":(context) => const Tuesday(),
      "/wednesday":(context) => const Wednesday(),
      "/thursday":(context) => const Thursday(),
      "/friday":(context) => const Friday(),
      "/saturday":(context) => const Saturday(),
      "/sunday":(context) => const Sunday(),
    },
    //home: const Scaffold(body: SafeArea(child: MainApp()),),
    ),
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Museum free Barcelona 2023', 
            style: TextStyle(
            fontSize: 100, 
            fontWeight: FontWeight.bold),
            ),
          FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context,"/menu");
            },
            tooltip: 'wow->',
            backgroundColor: const Color.fromARGB(255, 12, 12, 12),
            child: const Text(">>>>>>>>>"))
        ]    
      ),
    ); 
  }
}
