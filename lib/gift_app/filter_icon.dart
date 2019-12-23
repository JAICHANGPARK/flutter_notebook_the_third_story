import 'package:flutter/material.dart';

class FilterIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 3,
              right: 3,
              top: 8,
              child: Container(
                height: 1.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 8,
              top: 5,
              child: Container(
                height: 8,
                width: 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius:
                  BorderRadius.circular(
                    2,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 3,
              right: 3,
              bottom: 8,
              child: Container(
                height: 1.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              right: 6,
              bottom: 5,
              child: Container(
                height: 8,
                width: 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius:
                  BorderRadius.circular(
                    2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
