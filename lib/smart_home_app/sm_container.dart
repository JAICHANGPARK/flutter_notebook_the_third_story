import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  SMContainerV2({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(-1, -1),
              color: Colors.white,
            ),
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(1, 1),
              color: Colors.grey.shade400,
            )
          ]),
      child: child,
    );
  }
}
