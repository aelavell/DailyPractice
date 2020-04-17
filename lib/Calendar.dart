import 'package:flutter/material.dart';
import 'AccomplishmentCircle.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(child: Center(child: Text('S'))), 
              Expanded(child: Center(child: Text('M'))), 
              Expanded(child: Center(child: Text('T'))), 
              Expanded(child: Center(child: Text('W'))), 
              Expanded(child: Center(child: Text('T'))), 
              Expanded(child: Center(child: Text('F'))), 
              Expanded(child: Center(child: Text('S')))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: Text('1'))), 
                Expanded(child: Center(child: Text('2'))), 
                Expanded(child: Center(child: Text('3'))), 
                Expanded(child: Center(child: Text('4'))), 
                Expanded(child: Center(child: Text('5'))), 
                Expanded(child: Center(child: Text('6'))), 
                Expanded(child: Center(child: Text('7')))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.666, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.333, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.666, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: Text('8'))), 
                Expanded(child: Center(child: Text('9'))), 
                Expanded(child: Center(child: Text('10'))), 
                Expanded(child: Center(child: Text('11'))), 
                Expanded(child: Center(child: Text('12'))), 
                Expanded(child: Center(child: Text('13'))), 
                Expanded(child: Center(child: Text('14')))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.666, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: Text('15'))), 
                Expanded(child: Center(child: Text('16'))), 
                Expanded(child: Center(child: Text('17'))), 
                Expanded(child: Center(child: Text('18'))), 
                Expanded(child: Center(child: Text('19'))), 
                Expanded(child: Center(child: Text('20'))), 
                Expanded(child: Center(child: Text('21')))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.333, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.333, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.666, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: Text('22'))), 
                Expanded(child: Center(child: Text('23'))), 
                Expanded(child: Center(child: Text('24'))), 
                Expanded(child: Center(child: Text('25'))), 
                Expanded(child: Center(child: Text('26'))), 
                Expanded(child: Center(child: Text('27'))), 
                Expanded(child: Center(child: Text('28')))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 0.666, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 
                Expanded(child: Center(child: AccomplishmentCircle(value: 1.0, width: 30, height: 30))), 

              ],
            ),
          ),
        ]
      ),
    );
  }
}