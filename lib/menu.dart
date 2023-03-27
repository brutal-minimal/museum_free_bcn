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


    
class WeekMenu extends StatelessWidget {

  const WeekMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
                            color: Colors.black, 
                            fontSize: 24, 
                            letterSpacing: 2,
                            fontFamily: "font_inter",
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.fade );
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
                      color: const Color.fromARGB(250, 250, 148, 148).withOpacity(0.9),
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
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 250, 148, 148)),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/monday");},
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Text(weekdays[0], style: textStyle, textAlign: TextAlign.left,))
                        ),
              ),
            ),
          Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 7),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 250, 203, 148)),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/tuesday");},
                      child: Text(weekdays[1], style: textStyle)
                        ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 250, 233, 148)),
               ),
              onPressed: (){Navigator.pushNamed(context,"/wednesday");},
              child: Text(weekdays[2], style: textStyle, textAlign: TextAlign.left,)
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
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 199, 250, 148)),
               ),
              onPressed: (){Navigator.pushNamed(context,"/thursday");},
              child: Text(weekdays[3], style: textStyle)
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
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 148, 250, 244)),
               ),
              onPressed: (){Navigator.pushNamed(context,"/friday");},
              child: Text(weekdays[4], style: textStyle)
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
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 148, 207, 250)),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/saturday");},
                      child: Text(weekdays[5], style: textStyle, textAlign: TextAlign.left)
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
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 156, 148, 250)),
                       ),
                      onPressed: (){Navigator.pushNamed(context,"/sunday");},
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Text(weekdays[6], style: textStyle, textAlign: TextAlign.left))
                        ),
              ),
            ),
          ],
        
        ),
        
      ),
    );
  }
}