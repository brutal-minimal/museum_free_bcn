import 'package:flutter/material.dart';

  const weekdays = [
    "monday/dilluns/ponedilok/lunes",
    "tuesday/dimarts/vivtorok/martes",
    "wednesday/dimecres/sereda/miercoles",
    "thursday/dijous/chetver/jueves",
    "friday/divendres/piatnytsya/viernes",
    "saturday/dissabte/subota/sabado",
    "sunday/diumenge/nedilya/domingo",
    ];
  const rainbow = [
    Color.fromARGB(250, 250, 148, 148),
    Color.fromARGB(250, 250, 203, 148),
    Color.fromARGB(250, 250, 233, 148),
    Color.fromARGB(250, 199, 250, 148),
    Color.fromARGB(250, 148, 250, 244),
    Color.fromARGB(250, 148, 207, 250),
    Color.fromARGB(250, 156, 148, 250),
  ];

   const mytextStyle = TextStyle(
                            color: Colors.black, 
                            fontSize: 24, 
                            letterSpacing: 2,
                            fontFamily: "font_inter",
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.fade ); 
                            
class WeekMenu extends StatelessWidget {

  const WeekMenu({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:
            [Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  //color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.normal,
                      color: rainbow[0].withOpacity(0.9),
                      spreadRadius: 5,
                      blurRadius: 5,
                      //offset: const Offset(0, 3),
                    ),
                  ],
                ),
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(rainbow[0]),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/monday");},
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Text(weekdays[0], style: mytextStyle, textAlign: TextAlign.left,))
                        ),
              ),
            ),
          Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 7),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(rainbow[1]),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/tuesday");},
                      child: Text(weekdays[1], style: mytextStyle)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(rainbow[2]),
               ),
              onPressed: (){Navigator.pushNamed(context,"/wednesday");},
              child: Text(weekdays[2], style: mytextStyle, textAlign: TextAlign.left,)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        //padding: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(rainbow[3]),
               ),
              onPressed: (){Navigator.pushNamed(context,"/thursday");},
              child: Text(weekdays[3], style: mytextStyle)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        //padding: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(rainbow[4]),
               ),
              onPressed: (){Navigator.pushNamed(context,"/friday");},
              child: Text(weekdays[4], style: mytextStyle)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        //padding: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(rainbow[5]),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/saturday");},
                      child: Text(weekdays[5], style: mytextStyle, textAlign: TextAlign.left)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        //padding: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(rainbow[6]),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/sunday");},
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Text(weekdays[6], style: mytextStyle, textAlign: TextAlign.left))
                        ),
              ),
            ),
          ],
        
        ),
        
      ),
    );
  }
}