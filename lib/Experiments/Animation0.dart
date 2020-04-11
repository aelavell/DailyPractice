import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;


  @override 
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    final Animation curve =
    CurvedAnimation(parent: controller, curve: Curves.bounceOut);

    animation = Tween<double>(begin: 0, end: 300).animate(curve)
      ..addListener(() {
      setState(() { });
    });
    
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }

  @override 
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}