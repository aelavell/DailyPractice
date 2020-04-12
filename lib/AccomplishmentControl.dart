import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AccomplishmentControl extends StatefulWidget {
  _AccomplishmentControlState createState() => _AccomplishmentControlState();
}

class _AccomplishmentControlState extends State<AccomplishmentControl> with TickerProviderStateMixin {
  AnimationController interactionController;
  AnimationController completionController;
  AnimationController exitController;

  Animation<double> interactionAnimation;
  Animation<double> completionAnimation;
  Animation<double> exitAnimation;

  @override 
  void initState() {
    super.initState();

    Duration interactionDuration = const Duration(milliseconds: 1500);
    Duration completionDuration = const Duration(milliseconds: 600);
    Duration reverseDuration = completionDuration * 2;
    Duration exitDuration = const Duration(milliseconds: 300);

    interactionController = AnimationController(duration: interactionDuration, reverseDuration: reverseDuration, vsync: this)
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 100), () {
          completionController.forward();
        });
        Future.delayed(completionDuration * 5 + const Duration(milliseconds: 100), () {
          // completionController.reset();
          interactionController.reverse();
        });
        Future.delayed(completionDuration * 7 + const Duration(milliseconds: 100), () {
          completionController.stop();
          // exitController.forward();
        });
      }
    });

    final Animation interactionCurve = CurvedAnimation(
      parent: interactionController, 
      curve: Curves.easeInOutQuart,
      reverseCurve: Curves.easeOutSine);
    interactionAnimation = Tween<double>(begin: 0, end: 1).animate(interactionCurve);



    completionController = AnimationController(duration: completionDuration, vsync: this)
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        completionController.reverse();
      }
      else if (status == AnimationStatus.dismissed) {
        completionController.forward();
      }
    });

    final Animation completionCurve = CurvedAnimation(
      parent: completionController, 
      curve: Curves.easeInOutQuad);
    completionAnimation = Tween<double>(begin: 0.85, end: 1.15).animate(completionCurve);
    completionController.value = 0.5;



    exitController = AnimationController(duration: exitDuration, vsync: this);

    final Animation exitCurve = CurvedAnimation(
      parent: exitController, 
      curve: Curves.bounceInOut);
    exitAnimation = Tween<double>(begin: 0.5, end: 1.0).chain(Tween<double>(begin: 1.0, end: 0.5)).animate(exitCurve);
    // exitController.value = ;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ScaleTransition(
        scale: exitAnimation,
        child: ScaleTransition(
          scale: completionAnimation,
          alignment: Alignment.center,
          child: AnimatedCircle(animation: interactionAnimation)
        )
      ),
      onTapDown: (TapDownDetails details) {
        interactionController.forward();
      },
      onTapUp: (TapUpDetails details) {
        if (interactionController.value < 1.0) {
          interactionController.reverse();
        }
      },
      onLongPressEnd: (LongPressEndDetails details) {
        if (interactionController.value < 1.0) {
          interactionController.reverse();
        }
      },
      onDoubleTap: () {
        interactionController.reset();
      },
    );
  } 

  @override 
  void dispose() {
    interactionController.dispose();
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