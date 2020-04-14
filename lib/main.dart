import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DailyPracticeApp.dart';
import 'package:provider/provider.dart';
import 'Counter.dart';
  
void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => Counter(),
    child: DailyPracticeApp(),
  )
);

