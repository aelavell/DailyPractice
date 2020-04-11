import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AccomplishmentControl extends StatefulWidget {
  _AccomplishmentControlState createState() => _AccomplishmentControlState();
}

class _AccomplishmentControlState extends State<AccomplishmentControl> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  AnimationController controller2;

  @override 
  void initState() {
    super.initState();

    // flow: person holds down  to 1. if they get to 1,
    // changes into new animation state.
    // 

    controller = AnimationController(duration: const Duration(milliseconds: 1500), vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {

          // Future.delayed(const Duration(milliseconds: 1200), () {
          //   controller.reverse();
          // });
        }
      });
    final Animation curve = CurvedAnimation(
      parent: controller, 
      curve: Curves.easeInOutQuart,
      reverseCurve: Curves.easeOutSine);
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedCircle(animation: animation), 
      onTapDown: (TapDownDetails details) {
        controller.forward();
      },
      onTapUp: (TapUpDetails details) {
        if (controller.value < 1.0) {
          controller.reverse();
        }
      },
      onLongPressEnd: (LongPressEndDetails details) {
        if (controller.value < 1.0) {
          controller.reverse();
        }
      },
      onDoubleTap: () {
        controller.reset();
      },
    );
  } 

  @override 
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedCircle extends AnimatedWidget {
  AnimatedCircle({Key key, Animation<double> animation}) : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return Center(child: SizedBox(
      child: CircularProgressIndicator(
        value: animation.value, 
        strokeWidth: 30, 
        backgroundColor: Colors.grey, 
        valueColor: new AlwaysStoppedAnimation<Color>(const Color(0xffbEB2181)),
      ),
      width:  MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width * 0.5,
      height: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width * 0.5 
      )
    );
  }
}