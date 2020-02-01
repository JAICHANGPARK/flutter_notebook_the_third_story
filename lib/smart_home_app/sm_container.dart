import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}

class SMContainer extends StatelessWidget {
  final Widget child;

  SMContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(width: 2, color: Color(0xffffffffff)),
        left: BorderSide(width: 2, color: Color(0xffffffffff)),
        right: BorderSide(width: 2, color: Color(0xffff000000)),
        bottom: BorderSide(width: 2, color: Color(0xffff000000)),
      )),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2.0),
        decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 2, color: Color(0xffffdfdfdf)),
              left: BorderSide(width: 2, color: Color(0xffffdfdfdf)),
              right: BorderSide(width: 2, color: Color(0xffff7f7f7f)),
              bottom: BorderSide(width: 2, color: Color(0xffff7f7f7f)),
            ),
            color: Color(0xffbfbfbf)),
        child: child,
      ),
    );
  }
}

class SMContainerV2 extends StatelessWidget {
  final Widget child;
  final Color color;

  SMContainerV2({Key key, this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).backgroundColor;
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.mix(Colors.white, 0.1),
                color,
                color,
                color.mix(Colors.white, 0.5),
              ],
              stops: [
                0.0,
                0.3,
                0.6,
                1.0,
              ]),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0,
                offset: Offset(-5, -5),
                color: color.mix(Colors.white, 0.6)),
            BoxShadow(
                blurRadius: 10.0,
                offset: Offset(5, 5),
                color: color.mix(Colors.black, 0.3))
          ]),
      child: child,
    );
  }
}
