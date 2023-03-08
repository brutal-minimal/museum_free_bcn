import 'package:flutter/material.dart';
import 'main.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(250, 250, 148, 148)
                ),
               ),
              onPressed: null,
              child: const Text("monday/ dilluns/ ponedilok /lunes")),
            
            // ignore: prefer_const_constructors
            TextButton(onPressed: null, child: Text("tuesday/ dimarts/ vivtorok/martes")),
            //TextButton(onPressed: null, child: Text("wednesday/ dimecres/ sereda/miercoles")),
            //TextButton(onPressed: null, child: Text("thursday/ dijous/ chetver /jueves")),
            ////TextButton(onPressed: null, child: Text("saturday/ dissabte/ subota/sabado")),
            //TextButton(onPressed: null, child: Text("sunday/ diumenge/ nedilya /domingo"))
          ],
        )),
    );
  }
}