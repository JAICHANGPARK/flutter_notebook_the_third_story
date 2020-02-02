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

class SMContainerV2 extends StatefulWidget {
  final Widget child;
  final Color color;
  final double bevel;
  final Offset blurOffset;
  final bool shapes;

  SMContainerV2(
      {Key key, this.child, this.color, this.bevel = 10.0, this.shapes})
      : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  _SMContainerV2State createState() => _SMContainerV2State();
}

class _SMContainerV2State extends State<SMContainerV2> {
  bool _isPressed = false;

  void _onTap(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Theme.of(context).backgroundColor;
    return Listener(
      onPointerDown: _onTap,
      onPointerUp: _onTapUp,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            shape: widget.shapes ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: widget.shapes ? BorderRadius.circular(widget.bevel) : null,
            color: Colors.grey.shade200,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _isPressed ? color : color.mix(Colors.white, 0.1),
                  _isPressed ? color.mix(Colors.black, .05) : color,
                  _isPressed ? color.mix(Colors.black, .05) : color,
                  color.mix(Colors.white, _isPressed ? .2 : .5)
                ],
                stops: [
                  0.0,
                  0.3,
                  0.6,
                  1.0,
                ]),
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                        blurRadius: widget.bevel,
                        offset: -widget.blurOffset,
                        color: color.mix(Colors.white, 0.6)),
                    BoxShadow(
                        blurRadius: widget.bevel,
                        offset: widget.blurOffset,
                        color: color.mix(Colors.black, 0.3))
                  ]),
        child: widget.child,
      ),
    );
  }
}
