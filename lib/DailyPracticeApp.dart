import 'package:DailyPractice/AccomplishmentCircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AccomplishmentControl.dart';
import 'AccomplishedAnimation.dart';
import 'package:provider/provider.dart';
import 'Counter.dart';

class DailyPracticeApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: whiteSwatch,
        canvasColor: Color(0xffb1B1E2B),
        textTheme: Typography.whiteCupertino 
      ),
     home: Scaffold(
       body: Stack(children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(top: 32.0),
           child: Consumer<Counter>(
              builder: (context, counter, child) => Row(children: <Widget>[    
                AccomplishmentCircle(value: counter.value >= 1 ? 1.0 : 0.0, width: 50, height: 50,), 
                AccomplishmentCircle(value: counter.value >= 2 ? 1.0 : 0.0, width: 50, height: 50,), 
                AccomplishmentCircle(value: counter.value >= 3 ? 1.0 : 0.0, width: 50, height: 50,), 
              ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
           ),
         ),
         AccomplishmentControl(),
         
         Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
             padding: const EdgeInsets.only(bottom: 64.0), 
             child: Consumer<Counter>(
               builder: (context, counter, child) => GestureDetector(
                 onTap: () => Provider.of<Counter>(context, listen: false).reset(),
                 child: Text(counter.value >= 3 ? "Reset" : "", textScaleFactor: 2.0)
               ),
             )
           ),
         )
       ],)
       
       
     ),
   );
 }
}



const MaterialColor whiteSwatch = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);