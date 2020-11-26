import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
class FadeAnimation extends StatelessWidget{
  final double delay;
  final Widget child1;
  const FadeAnimation(this.delay,this.child1);
  @override
  Widget build(BuildContext context){
    final tween=MultiTrackTween([ // ignore: deprecated_member_use
      Track('opacity').add(Duration(milliseconds:500),Tween(begin:0.0,end:1.0),), // ignore: deprecated_member_use
      Track('translateY').add(Duration(milliseconds:500),Tween(begin: -30.0,end:0.0),curve:Curves.easeOut,) // ignore: deprecated_member_use
    ]);
    return ControlledAnimation( // ignore: deprecated_member_use
      delay:Duration(milliseconds:(500*delay).round()),
      duration:tween.duration,
      tween:tween,
      child:child1,
      builderWithChild:(context,child1,animation)=>Opacity(
          opacity:animation['opacity'],
          child:Transform.translate(
            offset:Offset(0,animation['translateY']),
            child:child1,
          ),
        ),
    );
  }
}