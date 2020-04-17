import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AccomplishmentCircle.dart';
import 'Counter.dart';
import 'AccomplishmentControl.dart';

class CircleScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
       ],);
  }
}