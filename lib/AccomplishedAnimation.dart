import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AccomplishedAnimation extends StatefulWidget {
  _AccomplishedAnimationState createState() => _AccomplishedAnimationState();
}

class _AccomplishedAnimationState extends State<AccomplishedAnimation> 
  with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  AnimationController controller2;

  @override 
  void initState() {
    super.initState(); 

    controller = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this)
      ..addStatusListener((status) {
        // print(status);
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
        else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ;
    final Animation curve = CurvedAnimation(
      parent: controller, 
      curve: Curves.easeInOutSine);
    animation = Tween<double>(begin: 0.65, end: 1.05).animate(curve);
    controller.forward(); 
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
      ScaleTransition(
        scale: animation,
        alignment: Alignment.center,
        child: CompletedCircle()
      ),
      Center(child: Text("Complete!", textScaleFactor: 1.55))
    ],);
    

    // return CompletedCircle();
  } 

  @override 
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class CompletedCircle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(child: SizedBox(
      child: CircularProgressIndicator(
        value: 1.0, 
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

// class AnimatedCircle extends AnimatedWidget {
//   AnimatedCircle({Key key, Animation<double> animation}) : super(key: key, listenable: animation);

//   Widget build(BuildContext context) {
//     final animation = listenable as Animation<double>;

//     return Center(child: SizedBox(
//       child: CircularProgressIndicator(
//         value: 1.0, 
//         strokeWidth: 30, 
//         backgroundColor: Colors.grey, 
//         valueColor: new AlwaysStoppedAnimation<Color>(const Color(0xffbEB2181)),
//       ),
//       width:  MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width * 0.5,
//       height: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width * 0.5 
//       )
//     );
//   }
// }